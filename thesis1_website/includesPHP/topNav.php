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
    if(session_status() == PHP_SESSION_NONE){
        session_start();
        if (isset($_SESSION['username'])) {
            echo "<a class='icn'>";
            echo "<i>" . $_SESSION['username'] . "</i>";
            echo "</a>";
        } else {
            echo "<a class='icn' id='cartBtn' onclick='logInBtnFunc()'>";
            echo "<i class='fa-sharp fa-solid fa-user'></i>";
            echo "</a>";
        }
    }
    ?>
    
    
    <!-- <a class="icn" id="cartBtn" onclick="logInBtnFunc()">
        <i class="fa-sharp fa-solid fa-user"></i>
    </a> -->

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

<?php include('../includesPHP/database.php')?>
<div id="cartContent">

    <div class="cartTitle">

        <a class="close" onclick="cartfunc()">
            <i class="fa-solid fa-xmark"></i>
        </a>

        <p class="cartT">Cart</p>

    </div>
    
    <!-- <p class="cartInfo">Your cart is empty.</p> -->

    <div class="cartItem">

        <?php
            $result = $conn->query("SELECT * FROM tblOrders WHERE UserID = '1'");
            echo "<br>";
            if (!$result) {
                echo "Error executing query: " . $conn->error;
            } else {
                // Check if there are any rows
                
                if ($result->num_rows > 0) {
                    // Output data of each row
                    
                    while ($row = $result->fetch_assoc()) {
                        $data = $row['OrderList'];
                        if(empty($data)){
                            echo "<p class='cartInfo'>Your cart is empty.</p>";
                        }else{
                            $seperator = explode(",", $data);
                            $rowCount = count($seperator);
                            for($i = 0; $i <$rowCount; $i++){
                                $parts = explode("+", $seperator[$i]);
                                echo "<div class='itemPicture'>";
                                echo "</div>";
                                echo "<p class='itemName'>$parts[1]<br>Details: $parts[2]<br>Price: $parts[3]</p>";
                                echo "<div class='itemQuantity'>";
                                echo "<a class='icnQuantity'><i class='fa-solid fa-minus'></i></a>";
                                echo "<input type='text' class='quantityNo'>";
                                echo "<a class='icnQuantity'><i class='fa-solid fa-plus'></i></a>";
                                echo "</div>";
                            }
                        }

                    }
                } else {
                    echo "No orders found.";
                }
            }
        ?>

        <input type="checkbox" id="productCheckbox" class="productCheckbox"> 

        <div class="itemInfo">
            <div class="itemPicture">
                <img class="sampleImg" id="productImg" src="resources/fllotion.png">
            </div>

            <p class="itemName">Soap</p>

            <p class="itemDetails">21g</p>

            <p class="itemPrice">₱40</p>
            
            <div class="itemQuantity">
                <a class="icnQuantity"><i class="fa-solid fa-minus"></i></a>
                <input type="text" class="quantityNo">
                <a class="icnQuantity"><i class="fa-solid fa-plus"></i></a>
            </div> 
        </div>

        <div class="cartFooter">

            <input type="checkbox" id="productCheckboxAll" class="productCheckbox"> 
            <label for="productCheckboxAll" class="productCheckboxAll">All</label>

            <label class="productTotal"> Total: ₱0</label>

            <button class="checkOutButton">Check Out</button>

        </div>

    </div>
</div>

<div id="logInCon">

    <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">


        <a class="closeLogIn" onclick="logInBtnFunc()">
            <i class="fa-solid fa-xmark"></i>
        </a>

        <p class="LoginTitle">Log In</p>
            <?php
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    $uName = $_POST['txtUsername'];
                    $pWord = $_POST['txtPassword'];
                    if (empty($uName) || empty($pWord)) {
                        echo "Please fill the username/password";
                    } else if($uName == "admin" && $pWord == "admin"){
                            if (session_status() === PHP_SESSION_ACTIVE) {
                                $_SESSION['username'] = $uName;
                                $_SESSION['password'] = $pWord;
                                // header("Location: ../Homepage");
                                // exit();
                            } else {
                                echo "not started";
                            }
                    }else{
                        echo "Incorrect username/password";
                    }
                }
            ?><br>
        <label>User Name</label>
        <input class="loginInput" placeholder="Username" name="txtUsername"><br><br><br>

        <label>Password</label>
        <input class="loginInput" placeholder="Enter your Password" name="txtPassword"><br><br>  

        <br>

        <button class="logInButton">Log In</button>

    </form>

</div>

<div id="userProfileCon">

    <a class="closeLogIn">
         <i class="fa-solid fa-xmark"></i>
    </a>

    <div class="userAccount">

        <a class="userIcon">
            <i class="fa-sharp fa-solid fa-user"></i>
        </a>

        <p class="userName">User Name</p>

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