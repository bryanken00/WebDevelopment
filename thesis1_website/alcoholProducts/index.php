<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/logInPage.css">

</head>

<body>

<?php include('../includesPHP/topNav.php')?>

    

    <br><br>

    <div class="productCon">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Ethyl Alcohol</p>
            <p class="weightEA" id="productWeight">1 gallon</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Ethyl Alcohol</p>
            <p class="weightEA" id="productWeight">1 litter</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Ethyl Alcohol</p>
            <p class="weightEA" id="productWeight">60ml</p>
            <p class="price" id="productPrice">₱40</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Isopropyl Alcohol</p>
            <p class="weightIA" id="productWeight">1 gallon</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>

    <div class="productCon3">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Isopropyl Alcohol</p>
            <p class="weightIA" id="productWeight">1 litter</p>
            <p class="price" id="productPrice">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Isopropyl Alcohol</p>
            <p class="weightIA" id="productWeight">60ml</p>
            <p class="price" id="productPrice">₱40</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" id="productImg" src="resources/falcohol.png">
            </div>
            <p class="productLbl" id="productLabel">Alcogel Hand Sanitizer</p>
            <p class="weightIA" id="productWeight">60ml</p>
            <p class="price" id="productPrice">₱40</p>
            <button class="addCart">Add to Cart</button>
        </div>

        
    </div>
    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>