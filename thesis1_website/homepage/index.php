<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">

</head>

<body>

    <div class="topNav">

        <div class="compressed">
            <i class="fa-solid fa-bars"></i>
        </div>

        <img src="../image\logo/KBN_icon.png" class="logo">

        <div class="KBNLogo">
            <p class="l1">KBN</p>
            <p class="l2">SKIN ESSENTIALS MANUFACTURING</p>
        </div>

        <div class="HB"> 

            <a class="hna" href="">Home</a>
            <a class="hna" href="#oShop" >News</a>
            <a class="hna" onclick="abtfunc()" >About Us <i class="fa-solid fa-caret-down"></i> </a>
            <a class="hna" onmouseenter="catFunc()" >KBN Products</a>
            <a class="hna" href="../application">Application</a>

            <a class="icn" id="cartBtn" onclick="cartfunc()">
                <i class="fa-sharp fa-solid fa-bag-shopping"></i>
            </a>
    
            <a class="icn" href="../loginpage" >
                <i class="fa-sharp fa-solid fa-user"></i>
            </a>
    
            <a class="icn" href="#">
                <i class="fa-solid fa-magnifying-glass"></i>
            </a>

        </div>

    </div>

    <div id="productDropdown">
        <ul>
            <li>
                <a class="category" href="../SoapProducts">Soap</a>
            </li>

            <li>
                <a class="category" href="../lotionProducts">Lotion</a>
            </li>

            <li>
                <a class="category" href="../rejuvProducts">Rejunenating Set</a>
            </li>

            <li>
                <a class="category" href="../glassSkinProducts/">Glass Skin Set</a>
            </li>

            <li>
                <a class="category" href="../AlcoholProducts">Alcohol</a>
            </li>
        </ul>
        
    </div>

    <div id="cartContent">

        <div class="cartTitle">

            <a class="close" onclick="cartfunc()">
                <i class="fa-solid fa-xmark"></i>
            </a>

            <p class="cartT">Cart</p>

        </div>

        <p class="cartInfo">Your cart is empty.</p>
    </div>

    <div id="aboutUs" >
        <a class="abtcon" href="../about">About</p>
        <a class="abtcon" href="#">Contact</p>
    </div>

    <div class="drpdown_compressed">
        
            <a class="hna" href="#">Home</a>
            <a class="hna" href="#">News</a>
            <a class="hna" href="#">About</a>

            <div class="icn">
                
                <button id="cartBtn" class="icnCart" onclick="cartFunc()">
                    <i class="fa-sharp fa-solid fa-bag-shopping"></i>
                </button>


                <a class="icnUser" href="#" >
                    <i class="fa-sharp fa-solid fa-user"></i>
                </a>
        
                <a class="icnSearch" href="#">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </a>

            </div>

    </div>

    <br>

    <div class="content">
        
        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <img class="imgSlide1" src="resources/modelkbn.png">
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

    <div id="oShop">
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

            <a class="grid-item" href="../SoapProducts">
                <img class="fsoap" src="resources/fsoap.png">
                <p class="LblSoap">Soap</p>
            </a>

            <a class="grid-item" href="../lotionProducts">
                <img class="fllotion" src="resources/fllotion.png">
                <p class="Lbllotion">Lotion</p>
            </a>

            <a class="grid-item" href="../rejuvProducts">
                <img class="frejuv" src="resources/frejuv.png">
                <p class="Lblrejuv">Rejuvenating Set</p>
            </a>

        </div>
    
        <br><br><br>
    
        <div class="gridCon2">
            
            <a class="grid-item" href="../glassSkinProducts/" >
                <img class="fglowskin" src="resources/fglowskin.png">
                <p class="Lblglowskin">Glass Skin Set</p>
            </a>
    
            <a class="grid-item"href="../AlcoholProducts">
                <img class="falcohol" src="resources/falcohol.png">
                <p class="Lblalcohol">Alcohol</p>
            </a>

        </div>

    </div>

    <div class="footer">

        <div class="col1">

            <img src="../image\logo/KBN_Logo.png" class="logof">

            <div class="location">
                <a class="locIcn"><i class="fa-sharp fa-solid fa-location-dot"></i></a>
                <p class="loc">Binangonan, Philippines, 1940</p>
            </div>

            <div class="telephone">
                <a class="telIcn"><i class="fa-solid fa-phone"></i></a>
                <p class="tel">286961198</p>
            </div>

            <div class="email">
                <a class="emailIcn"><i class="fa-solid fa-envelope"></i></a>
                <p class="mail">kbnskinessentialsltdco@gmail.com</p>
            </div>

        </div>

        <div class="col2">

            <p class="fTitle">Offers</p>

            <p class="fContent">Manufacture</p>

        </div>

        <div class="col3">

            <p class="fTitle">Information</p>

        </div>

        <div class="col4">

            <p class="fTitle">Privacy Policy</p>

            <p class="fContent">Website Privacy Policy</p>
            <p class="fContent">Request for Return</p>
            <p class="fContent">Legibility and Validity</p>

        </div>

    </div>

    <p class="cp">Copyright 2023 All Rights Reserved.</p>

    <script src="../javascript/web.js"></script>

</body>

</html>