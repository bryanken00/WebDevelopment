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
        <?php include('../includesPHP/topNav.php')?>
    </div>

    

    <br><br>

    <div class="productCon">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="ageEsaserS" src="resources/fsoap.png">
            </div>
            <p class="productLbl">Kojic Rejuvinating Soap</p>
            <p class="weightKo">135g</p>
            <p class="price">₱40</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="glutaLotion" src="resources/fllotion.png">
            </div>
            <p class="productLbl">Sunblock</p>
            <p class="weightSB">10g</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" src="resources/falcohol.png">
            </div>
            <p class="productLbl">Bight Cream</p>
            <p class="weightBC">10g</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" src="resources/frejuv.png">
            </div>
            <p class="productLbl">Toner</p>
            <p class="weightTon">60ml</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>

    <div class="productCon2">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" src="resources/frejuv.png">
            </div>
            <p class="productLbl">Rejuvenating Set</p>
            <p class="weightRaSET">Kojic Soap, Sunblock, Night Cream, Toner</p>
            <p class="priceRaSET">₱250</p>
            <button class="addCart">Add to Cart</button>
        </div>

        
    </div>
    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>