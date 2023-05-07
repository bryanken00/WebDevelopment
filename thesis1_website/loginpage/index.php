<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="logInPage.css">

</head>

<body>

    <?php include('topNav/topNav.php')?>

    <div class="logInCon">

        <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">

            <p class="LoginTitle">Log In</p>
                <?php
                    if ($_SERVER["REQUEST_METHOD"] == "POST") {
                        $uName = $_POST['txtUsername'];
                        $pWord = $_POST['txtPassword'];
                        if (empty($uName) || empty($pWord)) {
                            echo "Please fill the username/password";
                        } else if($uName == "admin" && $pWord == "admin"){
                            session_start();

                                if (session_status() === PHP_SESSION_ACTIVE) {
                                    $_SESSION['username'] = $uName;
                                    $_SESSION['password'] = $pWord;
                                } else {
                                    echo "not started";
                                }
                        }else{
                            echo "Incorrect username/password";
                        }
                    }
                ?><br>
            <label>User Name</label>
            <input placeholder="Username" name="txtUsername"><br><br><br>
    
            <label>Password</label>
            <input placeholder="Enter your Password" name="txtPassword"><br><br>  
            
            <br>
        
            <button>Log In</button>
            
        </form>
        
        
    </div>




    <br><br>

    

    <div class="footer">

        <div class="col1">

            <img src="../image\logo/KBN_Logo.png" class="logof">

            <div class="location">
                <a class="locIcn"><i class="fa-sharp fa-solid fa-location-dot"></i></a>
                <p class="loc">Binangonan, Philippines, 1940</p>
            </div>

            <div class="telephone">
                <a class="telIcn"><i class="fa-solid fa-phone"></i></a>
                <p class="tel">286961198</p>
            </div>

            <div class="email">
                <a class="emailIcn"><i class="fa-solid fa-envelope"></i></a>
                <p class="mail">kbnskinessentialsltdco@gmail.com</p>
            </div>

        </div>

        <div class="col2">

            <p class="fTitle">Offers</p>

            <p class="fContent">Manufacture</p>

        </div>

        <div class="col3">

            <p class="fTitle">Information</p>

        </div>

        <div class="col4">

            <p class="fTitle">Privacy Policy</p>

            <p class="fContent">Website Privacy Policy</p>
            <p class="fContent">Request for Return</p>
            <p class="fContent">Legibility and Validity</p>

        </div>

    </div>

    <p class="cp">Copyright 2023 All Rights Reserved.</p>

    <script src="../javascript/web.js"></script>

</body>

</html>

