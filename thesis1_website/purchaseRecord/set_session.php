<?php
    if(session_status() == PHP_SESSION_NONE)
        session_start();

    if (isset($_POST['data'])) {
    $_SESSION['SelectProduct'] = $_POST['data'];
    }

?>