<?php
session_start();

$userID = $_SESSION['userID'];
$productLabel = $_POST['productLabel'];
$quantity = $_POST['prodQuantity'];
$productWeight = $_POST['productWeight'];


include('../includesPHP/database.php');

$sqlChecker = "SELECT uID FROM tblCartData WHERE uid = '$userID' AND prodName = '$productLabel' AND prodQuantity = '$quantity' AND prodVariant = '$productWeight'";
// echo $sqlChecker;
$result = $conn->query($sqlChecker);
if ($result->num_rows > 0) {
    // Not working yet
    echo $productWeight;
    echo "<script>window.alert('Please review your cart. This item has already been added.');</script>";
}else{
    $sql = "INSERT INTO tblCartData (uID, prodName, prodQuantity, prodVariant) VALUES('$userID','$productLabel','$quantity','$productWeight')";
    if ($conn->query($sql) === TRUE) {
        echo "Record updated successfully";
    } else {
        echo "Error updating record: " . $conn->error;
    }
}
?>