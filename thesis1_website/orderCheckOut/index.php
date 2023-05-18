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
                <?php
                if (!empty($_SESSION['checkedCheckboxesData'])) {
                    $dataLength = count($_SESSION['checkedCheckboxesData']);
                
                    for ($i = 0; $i < $dataLength; $i++) {
                    $itemName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
                    $itemDetails = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
                    $itemPrice = $_SESSION['checkedCheckboxesData'][$i]['itemPrice'];
                    $productImg = $_SESSION['checkedCheckboxesData'][$i]['productImg'];
                    $quantityNo = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
                
                    echo "<div class='itemPicture'><img class='sampleImg' src='$productImg'></div>";
                    echo "<p class='productName'>$itemName</p>";
                    // <!-- San to hinugot -->
                    // <!-- <p class="productWeight">21g</p> -->
                    echo "<p class='productPrice'>$itemPrice</p>";
                    echo "<p class='productQuantity'>$quantityNo</p>";
                    echo "<br><br><br><br><br><br>";
                    }
                
                } else {
                    $_SESSION['datalist'] = "No data found in session.";
                    // echo $_SESSION['datalist'];
                }
            
                ?>
            </div>


        </div>

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJAX.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>