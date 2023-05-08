<!-- Session Testing -->

<?php
session_start();
session_destroy();

echo "Username: " . $_SESSION['username'] . "\nPassword: " . $_SESSION['password'];


?>
