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

        <div class="prItem">
            <p class="prTitle">to Pay</p>
        </div>

        <div class="prItem">
            <p class="prTitle">to Ship</p>
        </div>

        <div class="prItem">
            <p class="prTitle">to Receive</p>
        </div>

        <div class="prItem">
            <p class="prTitle">to Return</p>
        </div>

        <div class="prItem">
            <p class="prTitle">to Rate</p>
        </div>

    </div>

    <div class="prToPay">

        <div class="prToPayProductSeparator">

            <div class="prToPayProduct">

                <div class="prToPayItemPicture">
                    <img class='prSampleImg' src="resources/fsoap.png" id='productImg'>
                </div>

                <div class="prToPayProductDetails">

                    <p class="prToPayProductName">Soap</p>
                    <p class="prToPayProductWeight">21g</p>
                    <p class="prToPayProductQuantity">x1</p>
                    <p class="prToPayProductPrice">₱40</p>
                    
                </div>   

            </div>

            <label class="prToPayTotalPrice">Amount Payable: </label>

            <label class="pending">Pending</label>

        </div>
            
    </div>

    
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>