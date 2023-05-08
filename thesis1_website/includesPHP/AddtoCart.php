<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "kbndatabase";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
    if(!isset($productLbl)){
        $productLbl = $_POST['productLbl'];
        $weight = $_POST['weight'];
        $price = $_POST['price'];

        $sql = "INSERT INTO tblorders VALUES('123','Glutamansi Soap+50g+₱50');";
        echo $sql;
        // if ($conn->query($sql) === TRUE) {
        // echo "Data added to cart successfully!";
        // } else {
        // echo "Error: " . $sql . "<br>" . $conn->error;
        // }
    }else{

        }
$conn->close();
?>