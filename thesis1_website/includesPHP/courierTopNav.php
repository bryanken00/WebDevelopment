<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
?>

<div class="courierSide-navbar">
        
        <div class="courierSide-user">

            <a class="courierSide-icn" onclick="courierUserFunction()">
                <i class="fa-solid fa-user"></i>
                <a><?php echo $_SESSION['Username']?></a>
            </a>

        </div>

</div>