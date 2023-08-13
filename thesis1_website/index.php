<!-- Session Destroyer -->

<?php
session_start();
session_destroy();

echo "Username: " . $_SESSION['username'] . "\nPassword: " . $_SESSION['password'] . "\nUserID: " . $_SESSION['userID'];

include('includesPHP/database.php');


$result = $conn->query("SELECT count(*) FROM tblOrders");

if (!$result) {
    echo "Error executing query: " . $conn->error;
} else {

    $row = $result->fetch_row();
    echo "Count of orders: " . $row[0];
}
?>