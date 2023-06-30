<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">

</head>

<body>

    <?php include('../includesPHP/topNav.php');
    unset($_SESSION['checkedCheckboxesData']);?>

    <br>

    <div class="content">
        
        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <video width="300px" hight="auto">
                <source src="resources/kbnvid.mp4" type="video/mp4">
             </video>
        </div>

        <div class="mySlides fade">
            <img class="imgSlide1" src="resources/KBN Rejuvenating_cover.jpg">
            <button class="fAddCart2">Shop Now</button>
        </div>

        <div class="mySlides fade">
            <img class="imgSlide1" src="resources/KBN Radiant Glow Set_cover.jpg">
            <button class="fAddCart3">Shop Now</button>
        </div>

        <!-- Next and previous buttons -->
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>

        <!-- The dots/circles -->
        <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>

    </div>

    

    <br><br>

        <div class="shop">
            <h1>KBN Skin Essentials Ltd. Co. Toll Manufacturer</h1>
            <p>The best skin of your life starts here...</p> 
        </div>
    
    <br><br><br><br>

    <div class="conGrid">

        <div class="products">
            <h2>Our Products</h2>
        </div>

        <div class="gridCon">

            <a class="grid-item" href="../Products/?Cat=Soap">
                <img class="fsoap" src="../Products/resources/fsoap.png">
                <p class="LblSoap">Soap</p>
            </a>

            <a class="grid-item" href="../Products/?Cat=Lotion">
                <img class="fllotion" src="resources/fllotion.png">
                <p class="Lbllotion">Lotion</p>
            </a>

            <a class="grid-item" href="../Products/?Cat=Rejunenating">
                <img class="frejuv" src="resources/frejuv.png">
                <p class="Lblrejuv">Rejuvenating Set</p>
            </a>

        </div>
    
        <br><br><br>
    
        <div class="gridCon2">
            
            <a class="grid-item" href="../Products/?Cat=Glass Skin" >
                <img class="fglowskin" src="resources/fglowskin.png">
                <p class="Lblglowskin">Glass Skin Set</p>
            </a>
    
            <a class="grid-item"href="../Products/?Cat=Alcohol">
                <img class="falcohol" src="resources/falcohol.png">
                <p class="Lblalcohol">Alcohol</p>
            </a>

        </div>
    </div>

<!-- Messenger Chat plugin Code -->
<!-- <div id="fb-root"></div> -->
<!-- Your Chat plugin code -->
<!-- <div id="fb-customer-chat" class="fb-customerchat"> -->
</div>

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJAX.js"></script>
    <script src="../javascript/web.js"></script>
    <!-- <script src="../javascript/messenger.js"></script> -->

</body>

</html>
