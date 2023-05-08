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

    <a class="hna" href="../homepage">Home</a>
    <a class="hna" href="#oShop" >News</a>
    <a class="hna" onclick="abtfunc()" >About Us <i class="fa-solid fa-caret-down"></i> </a>
    <a class="hna" onmouseenter="catFunc()" >KBN Products</a>
    <a class="hna" href="../application">Application</a>

    <a class="icn" id="cartBtn" onclick="cartfunc()">
        <i class="fa-sharp fa-solid fa-bag-shopping"></i>
    </a>

    <?php
        session_start();
        if (isset($_SESSION['username'])) {
            echo "<a class='icn'>";
            echo "<i>" . $_SESSION['username'] . "</i>";
            echo "</a>";
        } else {
            echo "<a class='icn' href='../loginpage' >";
            echo "<i class='fa-sharp fa-solid fa-user'></i>";
            echo "</a>";
        }
    ?>


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
    <?php
    
    ?>
<p class="cartInfo">Your cart is empty.</p>

<div class="cartItem">

        <div class="itemPicture"></div>

        <p class="itemName">sample</p>
        
        <div class="itemQuantity">

            <a class="icnQuantity">
                <i class="fa-solid fa-minus"></i>
            </a>

            <input type="text" class="quantityNo">
            
            <a class="icnQuantity">
                <i class="fa-solid fa-plus"></i>
            </a>

        </div>

    </div>
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