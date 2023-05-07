<!-- Session Testing -->

<?php
session_start();

echo "Username: " . $_SESSION['username'] . "\nPassword: " . $_SESSION['password'];


?>