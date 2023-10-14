<?php
    $ref = $_GET['cancel'];
    $reason = $_GET['Reason'];

    include('../includesPHP/database.php');

    //ARCHIVE

    $SQL = "INSERT INTO tblcancelledorder (OrderRefNumber, CancelDate,Reason) VALUES('$ref',NOW(), '$reason');";
    $SQLDelete = "DELETE FROM tblorderexpirationtime WHERE OrderRefNumber = '$ref';";
    if ($conn->query($SQL) === TRUE) {
        if ($conn->query($SQLDelete) === TRUE) {
            echo "Record inserted successfully!";
            echo "<script>window.alert('Please review your cart. This item has already been added.'); window.close();</script>";
        } else {
            echo "Error: " . $SQL . "<br>" . $conn->error;
        }
    } else {
        echo "Error: " . $SQL . "<br>" . $conn->error;
    }
    
?>