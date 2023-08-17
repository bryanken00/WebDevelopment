<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
?>

<div class="courierSide-navbar">

        <input type="checkbox" id="check">
        
        <div class="courierSide-user">

        <label for="check">

            <a class="courierSide-icn" onclick="courierUserFunction()">
                <i class="fa-solid fa-user" id="nav-slide"></i>
                <a><?php echo $_SESSION['Username']?></a>
            </a>

        </label>

        </div>

        <div class="sidebar">

            <div class="sidebar-footer">
                <p class="signOut">sign out</p>
            </div>

        </div>

</div>