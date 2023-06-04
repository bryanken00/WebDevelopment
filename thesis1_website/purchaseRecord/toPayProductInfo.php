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

    <div class="toPayProductInfo">

        <div class="prToPayClientInfo">
            <p class="deliveryTitle">Information Address</p>
            <p class="clientInfo">Name: </p>
            <p class="clientAddress">Address: </p>
            <p class="clientNo">Contact: </p>
            <p class="clientEmailAddress">Email: </p>
        </div>

        <div class="toPayProductDetailsTP">

            <div class="toPayProductDetailsScroll">
                
                <div class="toPayProductSeparator">
                    <div class='itemPicture'><img class='sampleImg' src='$img'></div>
                    <p class='productName'>Name</p>
                    <p class='productWeight'>Variant: </p>
                    <p class='productPrice'>₱ </p>
                    <p class='productQuantity'>Quantity: </p>
                </div>
                
            </div>

            <div class="totalAmountCon">
                    <p class="amount" id="subTotal">Subtotal: </p>
                    <p class="amount" id="shipping">Shipping: </p>
            </div>
            <p class="totalAmount" id="totalAmount">Total: </p>

        </div>

    </div>


    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>