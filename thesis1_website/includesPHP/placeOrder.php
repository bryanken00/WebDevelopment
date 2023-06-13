<?php
include('../includesPHP/database.php');
if(session_status() == PHP_SESSION_NONE){
    session_start();
}
if (!empty($_SESSION['checkedCheckboxesData'])){$dataLength = count($_SESSION['checkedCheckboxesData']);}

//random number of ref number
$sqlrefGen = "SELECT COUNT(OrderRefNumber) FROM tblordercheckout";
$resultrefGen = $conn->query($sqlrefGen);
$rowrefGen = $resultrefGen->fetch_assoc();
$countValue = $rowrefGen['COUNT(OrderRefNumber)'];
$ref = "ref" . $countValue+1;
$uID = $_SESSION['userID'];
$custAddress = $_SESSION['custAddress'];
$custNumber = $_SESSION['custNumber'];
$custEmail = $_SESSION['custEmail'];

for($i = 0; $i < $dataLength; $i++){
    $prodName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
    $prodVolume = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
    $prodQuantity = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
    $itemPrice = $_SESSION['checkedCheckboxesData'][$i]['itemPrice'];

        //adding value on tblcheckoutdata
        $sql = "INSERT INTO tblordercheckoutdata(OrderRefNumber,ProductName, volume, Quantity, Price) 
        SELECT '$ref', prodName, prodVolume, $prodQuantity, prodPrice 
        FROM tblproducts 
        WHERE prodName = '$prodName' AND prodVolume = '$prodVolume'";
        if (mysqli_query($conn, $sql)) {
            echo "Table updated successfully.";
        } else {
            echo "Error updating table: " . mysqli_error($conn);
        }
        //updating table products (Quantity, Sold);
    
        // Update Product Stock
        $sqlUpdate = "UPDATE tblProducts
        SET Quantity = Quantity - $prodQuantity,
        Sold = $prodQuantity
        WHERE prodName = '$prodName' AND prodVolume = '$prodVolume'";
    
        if (mysqli_query($conn, $sqlUpdate)) {
            echo "Table updated successfully.";
        } else {
            echo "Error updating table: " . mysqli_error($conn);
        }

        $sqltoDelete = "DELETE FROM tblCartData WHERE prodName = '$prodName' AND prodVariant = '$prodVolume'";
        
        if (mysqli_query($conn, $sqltoDelete)) {
            echo "Table updated successfully.";
        } else {
            echo "Error updating table: " . mysqli_error($conn);
        }

}

$date = date ('Y-m-d');
$sql2 = "INSERT INTO tblordercheckout(OrderRefNumber, OrderDate, UserID, address, contact, email) VALUES('$ref', '$date', '$uID', '$custAddress', '$custNumber', '$custEmail')";

if ($conn->query($sql2) === TRUE) {
    echo "Record updated successfully sql1";
}else {
    echo "Error updating recordSQL1: " . $conn->error;
}

$sql3 = "INSERT INTO tblorderstatus VALUES('$ref','toPay')";
// adding value on tblcheckout
if($conn->query($sql3) === TRUE){
    echo "Record updated successfully sql2";
    // $_SESSION['checkedCheckboxesData'] = null;
    $uID = $_SESSION['userID'];
    $name = $_SESSION['username'];
    session_unset();
    session_destroy();
    session_start();
    $_SESSION['userID'] = $uID;
    $_SESSION['username'] = $name;

}else {
    echo "Error updating recordSQL2: " . $conn->error;
}

?>