<?php

include('../includesPHP/database.php');
if(session_status() == PHP_SESSION_NONE){
    session_start();
}
$identifier = $_POST['identifier'];

$hiddenID = $_POST['hiddenID'];

if($identifier == "EditName"){
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $sql = "UPDATE tblcustomerinformation SET Firstname = '$firstName', Lastname = '$lastName' WHERE UserID = '$hiddenID'";
}

else if($identifier == "EditContact"){
    $contact = $_POST['phone'];
    $sql = "UPDATE tblcustomerinformation SET Number = '$contact' WHERE UserID = '$hiddenID'";
}

else if($identifier == "EditPassword"){
    $password = $_POST['password'];
    $sql = "UPDATE tblcustomeraccount SET Password = '$password' WHERE UserID = '$hiddenID'";
}

echo $hiddenID;
$stmt = $conn->prepare($sql);
$stmt->execute();

?>