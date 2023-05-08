<?php
session_start();
            if (isset($_SESSION['username'])) {
                // Redirect the user back to the previous page
                header("Location: ../Homepage");
                exit();
            }
?>


<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="logInPage.css">

</head>

<body>

    <div class="log">
        <?php
        include('../includesPHP/topNav.php');

        
        ?>

        
    </div>

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
                                if (session_status() === PHP_SESSION_ACTIVE) {
                                    $_SESSION['username'] = $uName;
                                    $_SESSION['password'] = $pWord;
                                    header("Location: ../Homepage");
                                    exit();
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

    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>

