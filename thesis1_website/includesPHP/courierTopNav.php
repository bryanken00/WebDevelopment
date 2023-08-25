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

            <div class="sidebar-content">

                <div class="sidebar-content-icn">
                    <i id="sidebar-icn" class="fa-regular fa-file"></i>
                    <a class="sidebar-icn-label" href="../courierSide/completedDeliveries.php">Delivery History</a>
                </div>

                <div class="sidebar-content-icn">
                    <i id="sidebar-icn" class="fa-regular fa-file"></i>
                    <a class="sidebar-icn-label" href="../courierSide/index.php">Pending Deliveries</a>
                </div>

            </div>

            <div class="sidebar-footer">
                <a class="sidebar-footer-setting"  href="../courierSide/accountSetting.php">Account Setting</a>
                <hr class="sep1">
                <p class="sidebar-footer-setting" onclick="signOut()">sign out</p>
            </div>

            <script>
                function signOut() {
                    fetch('../courierSide/logout.php')
                    .then(response => response.text())
                    .then(data => {
                        window.location.href = '../courierSide';
                    })
                    .catch(error => {
                        console.error('Error:', error);
                    });
                }
            </script>

        </div>

</div>