<?php

// print_r($_POST);

// Retrieve the data sent by the AJAX request
$productImg = $_POST['productImg'];
$productLabel = $_POST['productLabel'];
$productWeight = $_POST['productWeight'];
$productPrice = $_POST['productPrice'];
$dirName = $_POST['dirName'];

// echo $dirName;

$imgPath = $dirName . "/" . $productImg;

include('../includesPHP/database.php');

$result = $conn->query("SELECT * FROM tblOrders WHERE UserID = '1'");

$row = $result->fetch_assoc();
$data = $row['OrderList'];
if($data == null){
    $sql = "UPDATE tblorders SET OrderList = CONCAT(OrderList,'$imgPath+$productLabel+$productWeight+$productPrice') WHERE UserID = 1";
}else{
    $sql = "UPDATE tblorders SET OrderList = CONCAT(OrderList,',$imgPath+$productLabel+$productWeight+$productPrice') WHERE UserID = 1";
}

echo $sql;



if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}


  
?>