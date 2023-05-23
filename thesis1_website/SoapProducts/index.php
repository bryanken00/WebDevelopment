<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');
?>

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

    <div class="productCon">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="ageEsaserS" id="productImg" src="resources/fsoap.png">
            </div>
            <p class="productLbl" id="productLabel">Age Eraser Soap</p>
            <p class="weight" id="productWeight">135g</p>
            <p class="price" id="productPrice">₱100</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="glutaLotion" id="productImg" src="resources/fllotion.png">
            </div>
            <p class="productLbl" id="productLabel">Glutamansi Soap</p>
            <p class="weight" id="productWeight">50g</p>
            <p class="price" id="productPrice">₱50</p>
            <button class="addCart">Add to Cart</button>
        </div>

        
        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Kojic Rejuvinating Soap</p>
            <p class="weight" id="productWeight">135g</p>
            <p class="price" id="productPrice">₱70</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" id="productImg" src="resources/frejuv.png">
            </div>
            <p class="productLbl" id="productLabel">Bleaching Soap</p>
            <p class="weight" id="productWeight">70g</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>

    <div class="productCon2">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="radiantSet" id="productImg" src="resources/fglowskin.png">
            </div>
            <p class="productLbl" id="productLabel">Revitalize Whitening Beauty Bar</p>
            <p class="weight" id="productWeight">135g</p>
            <p class="price" id="productPrice">₱90</p>
            <button class="addCart">Add to Cart</button>
        </div>

        
    </div>
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>