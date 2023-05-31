<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">

</head>

<body>

    <div class="log">
        <?php include('../includesPHP/topNav.php')?>
    </div>

    

    <br><br>

    <div class="purchaseRecord">

        <a class="prItem" id="prToPay" href="../purchaseRecord/index.php">
            <p class="prTitle">to Pay</p>
        </a>

        <a class="prItem" id="prToShip" href="../purchaseRecord/toShip.php">
            <p class="prTitle">to Ship</p>
        </a>

        <a class="prItem" id="prToReceive" href="../purchaseRecord/toReceive.php">
            <p class="prTitle">to Receive</p>
        </a>

        <a class="prItem active" id="prToReturn" href="../purchaseRecord/return.php">
            <p class="prTitle">to Return</p>
        </a>

        <a class="prItem" id="prToRate" href="../purchaseRecord/completed.php">
            <p class="prTitle">Completed</p>
        </a>

    </div>

    <div class="prToPay">

        
            
    </div>

    
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>