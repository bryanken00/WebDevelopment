<?php
print_r($_POST);
// Retrieve the data sent by the AJAX request
$productImg = $_POST['productImg'];
$productLabel = $_POST['productLabel'];
$productWeight = $_POST['productWeight'];
$productPrice = $_POST['productPrice'];

// Do something with the data (e.g. add it to a database)

// Send a response back to the client
// echo 'Data received successfully!';
?>