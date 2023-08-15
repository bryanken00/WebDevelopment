<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
?>

<div class="courierSide-navbar">
        
        <div class="courierSide-user">

        <input type="checkbox" id="check">

        <label for="check">

            <a class="courierSide-icn" onclick="courierUserFunction()">
                <i class="fa-solid fa-user" id="nav-slide"></i>
                <a><?php echo $_SESSION['Username']?></a>
                <i class="fa-solid fa-xmark" id="nav-close"></i>
            </a>

        </label>

        </div>

        <div class="sidebar">

            <div class="sidebar-footer">
                <p class="signOut">sign out</p>
            </div>

        </div>

</div>