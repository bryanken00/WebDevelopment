<?php

$servername = "srv1091.hstgr.io:3306";
$username = "u381024298_kbndatabase";
$password = "2wQG;a?N";
$database = "u381024298_kbndatabase";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
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