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
            <p class="productLbl" id="productLabel">Gel Toner</p>
            <p class="weightGelTon" id="productWeight">60ml</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="glutaLotion" id="productImg" src="resources/fllotion.png">
            </div>
            <p class="productLbl" id="productLabel">Facial Wash</p>
            <p class="weightFW" id="productWeight">80ml</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Serum</p>
            <p class="weightSer" id="productWeight">5g</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" id="productImg" src="resources/frejuv.png">
            </div>
            <p class="productLbl" id="productLabel">Sun Block</p>
            <p class="weightSBl" id="productWeight">10g</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>

    <div class="productCon2">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="radiantSet" id="productImg" src="resources/fglowskin.png">
            </div>
            <p class="productLbl" id="productLabel">Radiant Glow Facial Set</p>
            <p class="weightRaSET" id="productWeight">Gel Toner, Facial Wash, Serum, Sunblock</p>
            <p class="priceRaSET" id="productPrice">₱350</p>
            <button class="addCart">Add to Cart</button>
        </div>

        
    </div>
    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>