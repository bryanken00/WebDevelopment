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

        <div id="checkOutCon">

            <div class="deliveryAdd">

                <p class="deliveryTitle">Address:</p>
                <p class="clientInfo">raven</p>
                <p class="clientNo">1823381</p>
                <p class="clientAddress">rizal</p>
                <p class="zipCode">1940</p>

                <button class="placeOrderButton">Place Order</button>

            </div>

            <div class="productDetails">

                <div class="prodInfo">
                    <div class="itemPicture">
                        <img class='sampleImg' src="resources/fsoap.png" id='productImg'>
                    </div>

                    <p class="productName">Soap</p>
                    <p class="productWeight">21g</p>
                    <p class="productPrice">₱40</p>
                    <p class="productQuantity">x1</p>

                    <br><br>

                </div>

                <label class="totalPrice">Total: </label>
                            
            </div>


        </div>

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJAX.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>