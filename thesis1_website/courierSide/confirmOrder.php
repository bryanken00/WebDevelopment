<?php
    if(session_status() == PHP_SESSION_NONE)
        session_start();
    include('../includesPHP/database.php');

    $ref = $_GET['ref'];
    $sql = "UPDATE tblorderstatus SET Status = 'Completed' WHERE OrderRefNumber = '$ref'";

    $stmt = $conn->prepare($sql);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo "Order delivered successfully";
    } else {
        echo "alert('Please contact administrator')";
    }
?>