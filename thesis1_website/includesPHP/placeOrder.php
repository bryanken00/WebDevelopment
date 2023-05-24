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

for($i = 0; $i < $dataLength; $i++){
    $prodName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
    $prodVolume = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
    $prodQuantity = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
    //adding value on tblcheckoutdata
    $sql = "INSERT INTO tblordercheckoutdata(OrderRefNumber,ProductName, volume, Quantity, Price) 
    SELECT $ref,prodName, prodVolume, $prodQuantity, prodPrice 
    FROM tblproducts 
    WHERE prodName = '$prodName' AND prodVolume = '$prodVolume'";

    //adding value on tblcheckout
    echo $sql;
}

?>