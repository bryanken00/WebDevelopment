<?php

session_start();
session_destroy();

if(session_status() == PHP_SESSION_NONE){
    header("Location: homepage/");
    exit();
}


?>