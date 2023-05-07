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
            <p class="productLbl">Snail Max White Lotion</p>
            <p class="weightSMWL">250ml</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="glutaLotion" src="resources/fllotion.png">
            </div>
            <p class="productLbl">Glutamansi Lotion</p>
            <p class="weightGlu">250ml</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" src="resources/falcohol.png">
            </div>
            <p class="productLbl">Bleaching Lotion</p>
            <p class="weight">250ml</p>
            <p class="price">₱40</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" src="resources/frejuv.png">
            </div>
            <p class="productLbl">Gluta White Lotion</p>
            <p class="weightGWL">250ml</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>
    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>