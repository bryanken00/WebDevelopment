<?php
    $ref = $_GET['cancel'];

    include('../includesPHP/database.php');

    //ARCHIVE

    $SQL = "INSERT INTO tblcancelledorder (OrderRefNumber, CancelDate) VALUES('$ref',NOW());";
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