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
                <img class="ageEsaserS" id="productImg" src="resources/fsoap.png">
            </div>
            <p class="productLbl" id="productLabel">Kojic Rejuvinating Soap</p>
            <p class="weightKo" id="productWeight">135g</p>
            <p class="price" id="productPrice">₱40</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="glutaLotion" id="productImg" src="resources/fllotion.png">
            </div>
            <p class="productLbl" id="productLabel">Sunblock</p>
            <p class="weightSB" id="productWeight">10g</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Bight Cream</p>
            <p class="weightBC" id="productWeight">10g</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" id="productImg" src="resources/frejuv.png">
            </div>
            <p class="productLbl" id="productLabel">Toner</p>
            <p class="weightTon" id="productWeight">60ml</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>

    <div class="productCon2">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" id="productImg" src="resources/frejuv.png">
            </div>
            <p class="productLbl" id="productLabel">Rejuvenating Set</p>
            <p class="weightRaSET" id="productWeight">Kojic Soap, Sunblock, Night Cream, Toner</p>
            <p class="priceRaSET" id="productPrice">₱250</p>
            <button class="addCart">Add to Cart</button>
        </div>

        
    </div>
    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>