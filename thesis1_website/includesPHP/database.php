<?php

// $servername = "localhost";
// $username   = "root";
// $password   = "";
// $dbname     = "kbndatabase";

$servername = "srv1091.hstgr.io";
$username   = "u381024298_kbndatabase";
$password   = "2wQG;a?N";
$dbname     = "u381024298_kbndatabase";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    echo "Database failed to connect";
}


// function getUserID($userName){
//     $sql = "SELECT UserID FROM tblOrders WHERE userName = '$data'";
//     $result = $conn->query($sql);
//     $row = $result->fetch_assoc();
//     $data = $row['OrderList'];
//     return $data;
// }


// function getUserInfo($userID){
//     $sql = "SELECT * FROM tblcustomerinformation WHERE userID = '$userID'";
//     $result = $conn->query($sql);
//     $row = $result->fetch_assoc();
//     $array = array($row['Firstname'], $row['Lastname'], $row['Number']);
//     return $array;
// }
?>