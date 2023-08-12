<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
include('../includesPHP/database.php');
if(isset($_SESSION['courierID']))
    echo "<script>window.location.href = '../courierSide/';</script>";
?>

<!DOCTYPE html>
<html>
<head>

<title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/style.css">
</head>


<body>
        <div class="mLogInPage">

            <div class="logo-con">

                <img src="../image\logo/KBN_Logo.png" class="logoLogin">

            </div>
            <?php
                        if ($_SERVER["REQUEST_METHOD"] == "POST") {
                            $uName = $_POST['txtUsername'];
                            $pWord = $_POST['txtPassword'];
                            if (empty($uName) || empty($pWord)) {
                                echo "<center>Please fill the username/password</center><br>";
                            }else{
                                $sql = "SELECT courierID,Username FROM tblcourieraccount WHERE Username = '$uName' AND Password ='$pWord'";
                                $result = $conn->query($sql);
                                $row = $result->fetch_assoc();
                                if ($result->num_rows == 1) {
                                    if(session_status() === PHP_SESSION_NONE)
                                        session_start();
                                    $_SESSION['courierID'] = $row['courierID'];
                                    $_SESSION['Username'] = $row['Username'];
                                    echo "<script>window.location.href = '../courierSide/';</script>";
                                    // echo $_SESSION['Username'];
                                }else{
                                    echo "<center>Incorrect username/password</center>";
                                }
                            }
                        }
            ?>
            <form class="mLog" method='POST' action="<?php echo $_SERVER['PHP_SELF'];?>">

                <label class="loginLabel">User Name</label>
                <input class="loginInputM" placeholder="Username" name="txtUsername"><br><br><br>

                <label class="loginLabel">Password</label>
                <input class="loginInputM" placeholder="Enter your Password" name="txtPassword" type="password"><br><br> 

                <button class="logInButtonM">Log In</button>

            </form>

        </div>\
    

    <script src="../javascript/web.js"></script>
</body>
</html>