<?php
session_start();
// print_r($_POST);

// Retrieve the data sent by the AJAX request
$productImg = $_POST['productImg'];
$productLabel = $_POST['productLabel'];
$productWeight = $_POST['productWeight'];
$productPrice = $_POST['productPrice'];
$dirName = $_POST['dirName'];
$quantity = $_POST['prodQuantity'];

// echo $dirName;

$imgPath = $dirName . "/" . $productImg;
$userID = $_SESSION['userID'];

include('../includesPHP/database.php');

$result = $conn->query("SELECT * FROM tblOrders WHERE UserID = '$userID'");

$row = $result->fetch_assoc();
$data = $row['OrderList'];
if($data == null){
    $sql = "UPDATE tblorders SET OrderList = CONCAT(OrderList,'$imgPath+$productLabel+$productWeight+$productPrice+$quantity') WHERE UserID = '$userID'";
}else{
    if (strpos($data, $productLabel) == true) {
        return;
    } else {
    $sql = "UPDATE tblorders SET OrderList = CONCAT(OrderList,',$imgPath+$productLabel+$productWeight+$productPrice+$quantity') WHERE UserID = '$userID'";
    }
}

// print $sql;



if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}


  
?>