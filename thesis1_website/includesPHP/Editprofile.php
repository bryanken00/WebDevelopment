<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();

include('../includesPHP/database.php');

$identifier = $_POST['identifier'];

$hiddenID = $_POST['hiddenID'];
$varPopup;

if($identifier == "EditName"){
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $sql = "UPDATE tblcustomerinformation SET Firstname = '$firstName', Lastname = '$lastName' WHERE UserID = '$hiddenID'";
    $varPopup = "Your Name has been Updated!";
}

else if($identifier == "EditContact"){
    $contact = $_POST['phone'];
    $sql = "UPDATE tblcustomerinformation SET Number = '$contact' WHERE UserID = '$hiddenID'";
    $varPopup = "Contact Information has been Updated!";
}

else if($identifier == "EditPassword"){
    $password = $_POST['password'];
    $sql = "UPDATE tblcustomeraccount SET Password = '$password' WHERE UserID = '$hiddenID'";
    $varPopup = "Your password has been Updated!";
    
}

$stmt = $conn->prepare($sql);
$stmt->execute();

echo $varPopup;
?>