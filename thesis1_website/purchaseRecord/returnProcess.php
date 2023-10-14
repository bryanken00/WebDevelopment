<?php

if(!isset($_GET['ref']))
    return;

    include('../includesPHP/database.php');
$ref = $_GET['ref'];
$category = $_POST['Category'];
$reason = $_POST['Reason'];
$selectedItems = json_decode($_POST['SelectedItems']);

$imageDirectory = "../Return Product Image/";

// Function to find a unique filename by adding a counter
function findUniqueFilename($directory, $filename) {
    $counter = 0;
    $baseName = pathinfo($filename, PATHINFO_FILENAME);
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    $newFilename = $filename;
    while (file_exists($directory . $newFilename)) {
        $counter++;
        $newFilename = $baseName . '_' . $counter . '.' . $extension;
    }

    return $newFilename;
}

$img1 = findUniqueFilename($imageDirectory, $img1);
$img2 = findUniqueFilename($imageDirectory, $img2);
$img3 = findUniqueFilename($imageDirectory, $img3);



// echo "Category: " . $category . "<br>";
// echo "Reason: " . $reason . "<br>";
// echo "SelectedItems: ";
// print_r($selectedItems);

$conn->begin_transaction();

try {
    $sqlReturnDetails = "INSERT INTO tblreturndetails (OrderRefNumber, Reason, Category, imgPath1, imgPath2, imgPath3) VALUES ('$ref', '$reason', '$category', $img1, $img2, $img3)";
    $sqlReturnStatus = "INSERT INTO tblreturnstatus (OrderRefNumber, Status) VALUES ('$ref', 'Pending')";

    if ($conn->query($sqlReturnDetails) === TRUE && $conn->query($sqlReturnStatus) === TRUE)
        echo "Return Details and Status updated successfully";
    else
        echo "Error updating records: " . $conn->error;
    
    foreach ($selectedItems as $item) {
        $prodName = $item->productName;
        $prodVariant = $item->variant;
        $quantity = $item->quantity;

        $sqlProducts = "INSERT INTO tblreturnproduct (OrderRefNumber, prodName, prodVariant, Quantity) 
                VALUES (?, ?, ?, ?)";
        
        $stmt = $conn->prepare($sqlProducts);
        
        $stmt->bind_param("sssi", $ref, $prodName, $prodVariant, $quantity);
        
        $stmt->execute();
    }

    $conn->commit();
    
    echo "Return Products updated successfully";
} catch (Exception $e) {
    // Rollback the transaction on error
    $conn->rollback();
    echo "Error updating records: " . $e->getMessage();
}


?>