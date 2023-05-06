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

        <div class="topNav">

            <div class="compressed">
                <i class="fa-solid fa-bars"></i>
            </div>

            <img src="resources/KBN_icon.png" class="logo">

                <div class="KBNLogo">
                    <p class="l1">KBN</p>
                    <p class="l2">SKIN ESSENTIALS MANUFACTURING</p>
                </div>


            <div class="HB"> 
    
                <a class="hna" href="page1.html">Home</a>
                <a class="hna" href="#oShop">News</a>
                <a class="hna" onclick="abtfunc()" >About Us <i class="fa-solid fa-caret-down"></i> </a>
                <a class="hna" onmouseenter="catFunc()">KBN Products</a>
                <a class="hna" href="application.html">Application</a>

    
                <a class="icn" id="cartBtn" onclick="cartfunc()">
                    <i class="fa-sharp fa-solid fa-bag-shopping"></i>
                </a>
        
                <a class="icn" href="logInPage.html" >
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
                    <a class="category" href="SoapProducts.html">Soap</a>
                </li>
    
                <li>
                    <a class="category" href="lotionProducts.html">Lotion</a>
                </li>
    
                <li>
                    <a class="category" href="rejuvProducts.html">Rejunenating Set</a>
                </li>
    
                <li>
                    <a class="category" href="glassSkinProducts.html">Glass Skin Set</a>
                </li>
    
                <li>
                    <a class="category" href="AlcoholProducts.html">Alcohol</a>
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
            <a class="abtcon" href="about.html">About</p>
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

    </div>

    

    <br><br>

    <div class="productCon">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="ageEsaserS" src="resources/fsoap.png">
            </div>
            <p class="productLbl">Gel Toner</p>
            <p class="weightGelTon">60ml</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="glutaLotion" src="resources/fllotion.png">
            </div>
            <p class="productLbl">Facial Wash</p>
            <p class="weightFW">80ml</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="isopropylAl" src="resources/falcohol.png">
            </div>
            <p class="productLbl">Serum</p>
            <p class="weightSer">5g</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="rejuvSet" src="resources/frejuv.png">
            </div>
            <p class="productLbl">Sun Block</p>
            <p class="weightSBl">10g</p>
            <p class="price">₱1</p>
            <button class="addCart">Add to Cart</button>
        </div>

    </div>

    <div class="productCon2">

        <div class="gridProduct">
            <div class="productImgCon">
                <img class="radiantSet" src="resources/fglowskin.png">
            </div>
            <p class="productLbl">Radiant Glow Facial Set</p>
            <p class="weightRaSET">Gel Toner, Facial Wash, Serum, Sunblock</p>
            <p class="priceRaSET">₱350</p>
            <button class="addCart">Add to Cart</button>
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

    <script src="resources/web.js"></script>

</body>

</html>