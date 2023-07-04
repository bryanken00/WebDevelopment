<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
    include('../includesPHP/database.php');
?>
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
    <a class="hna" href="../about" >About Us</a>
    <a class="hna" onmouseenter="catFuncEnter()" onmouseleave="catFuncExit()" >KBN Products</a>
    <a class="hna" href="../application">Registration</a>

    <?php
        if(session_status() == PHP_SESSION_NONE){
            echo "<a class='icn' id='cartBtn'>";
            echo "<i class='fa-sharp fa-solid fa-bag-shopping'></i>";
            echo "</a>";
            
        }else{
            if(isset($_SESSION['username'])){
                echo "<a class='icn' id='cartBtn' onclick='cartfunc()'>";
                echo "<i class='fa-sharp fa-solid fa-bag-shopping'></i>";
                echo "</a>";
            }
        }
    ?>

    <?php
    if(session_status() == PHP_SESSION_NONE){
        session_start();
    } else{
        if (isset($_SESSION['username'])) {
            echo "<a class='icn'>";
            echo "<i  onclick='profileBtnFunc()'>" . $_SESSION['username'] . "</i>";
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

    <?php
        $sql = "SELECT * FROM tblproductcategories";
        $result = $conn->query($sql);
        $totalAmount = 0;
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $prodName = $row['prodCategory'];
                $prodCategory = $row['CategoryName']; // to display
                echo "<li>";
                echo "<a class='category' href='../Products/?Cat=$prodName'>$prodCategory</a>";
                echo "</li>";
            }
        }
    ?>
</ul>

</div>


<div id="cartContent">

    <div class="cartTitle">

        <a class="close" onclick="cartfunc()">
            <i class="fa-solid fa-xmark"></i>
        </a>

        <p class="cartT">Cart</p>

    </div>
    
    <!-- <p class="cartInfo">Your cart is empty.</p> -->

    <div class="cartItem scrollable">
        <div class="cartItem">
            <?php 
                include('../includesPHP/cartData.php');
            ?>
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
                    $sql = "SELECT UserID, Username, Password FROM tblcustomeraccount WHERE Username = '$uName' AND Password ='$pWord'";
                    $result = $conn->query($sql);
                    $row = $result->fetch_assoc();
                    if ($result->num_rows == 1) {
                        if (session_status() === PHP_SESSION_ACTIVE) {
                            $_SESSION['userID'] = $row['UserID'];
                            $_SESSION['username'] = $row['Username'];
                            // $_SESSION['password'] = $row['Password'];

                            echo "<script>window.location.href = '../Homepage';</script>";
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
        <input class="loginInput" placeholder="Enter your Password" name="txtPassword" type="password"><br><br>  

        <br>

        <button class="logInButton">Log In</button>

    </form>

</div>

<div id="userProfileCon">
    
<input id="hiddenID" value="<?php echo $_SESSION['userID']?>">
 
        <a class="closeLogIn" onclick="profileBtnFunc()">
            <i class="fa-solid fa-xmark"></i>
        </a>

        <a class="setting" onclick="settingBtnFunc()">
            <i class="fa-solid fa-gear"></i>
        </a>

        <div id="settingCon">
            <button class="accountSetting" onclick="accSettingButtonFunc()">Account Setting</button>
            <!-- LogoutFunction located in AJax -->
            <button class="logOut" onclick="LogoutFunction()">Log Out</button>
        </div>

        <div class="userAccount">

            <a class="userIcon">
                <i class="fa-sharp fa-solid fa-user"></i>
            </a>

            <p class="userName"><?php
            echo $_SESSION['username'];
            ?>
            </p>

        </div>

        <div class="myPurchases">

            <p class="purchaseTitle">My Purchase</p>

            
            <div class="purchaseCategory">
                <a class="purchaseIcn" href="../purchaseRecord/?Cat=toPay">
                    <i class="fa-regular fa-credit-card"></i>
                </a>
                    
                <a class="purchaseIcn" id="toShip" href="../purchaseRecord/?Cat=toShip">
                    <i class="fa-sharp fa-solid fa-truck-fast"></i>
                </a>
                    
                <a class="purchaseIcn" id="toReceive" href="../purchaseRecord/?Cat=toReceive">
                    <i class="fa-sharp fa-solid fa-boxes-stacked" ></i>
                </a>

                <a class="purchaseIcn" id="toReturn" href="../purchaseRecord/?Cat=Return">
                    <i class="fa-solid fa-right-left"></i>
                </a>
                
                <a class="purchaseIcn" id="toRate" href="../purchaseRecord/?Cat=Completed">
                    <i class="fa-regular fa-face-smile"></i>
                </a>
            
            </div>

        </div>

        <!-- place order item -->

        <div id="toPay">
            <div class="toPayProduct">

            <?php
            $userID = $_SESSION['userID'];
                $sql = "SELECT b.ProductName, b.volume, b.Quantity, b.Price, (b.Quantity * b.Price) AS totalAmount FROM tblorderstatus AS a JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber JOIN tblordercheckout AS c ON c.OrderRefNumber = a.OrderRefNumber WHERE c.UserID = '$userID' AND a.Status = 'toPay';";
                $result = $conn->query($sql);
                if($row = $result->fetch_assoc()){
            ?>
                <div class="toPayItemPicture">
                    <img class='sampleImg' src="../Products/resources/fsoap.png" alt="productImg" id='productImg'>
                </div>

                <div class="toPayProductDetails">

                    <p class="toPayProductName"><?php echo $row['ProductName']?></p>
                    <p class="toPayProductWeight">Variant: <?php echo $row['volume']?></p>
                    <p class="toPayProductQuantity">Quantity: <?php echo $row['Quantity']?></p>
                    <p class="toPayProductPrice">Price: <?php echo $row['Price']?></p>
                    
            <?php }else{
                echo "<p>No order Yet</p>";
            } ?>
                </div>
                <br><br>
            </div>
            <div>
                <?php
                    $sql = "SELECT SUM(b.Quantity * b.Price) AS totalAmount FROM tblorderstatus AS a JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber JOIN tblordercheckout AS c ON c.OrderRefNumber = a.OrderRefNumber WHERE c.UserID = 'admin#578' AND a.Status = 'toPay'";
                    $result = $conn->query($sql);
                    $row = $result->fetch_assoc();
                ?>
                <label class="toPayTotalPrice">Amount Payable: <?php echo $row['totalAmount']?></label>
                <a class="seeMore" href="../purchaseRecord/index.php">see more</a>
            </div>


        </div>
        
</div>

<!-- edit acc info -->

<div id="AccountNSecurity">

    <div class="AccountNSecurityHeader">

        <a class="checkOutBack" onclick="accSettingButtonFunc()">
            <i class="fa-solid fa-arrow-left"></i>
        </a>

        <p class="AccountNSecurityTitle">Account Setting</p>

    </div>
    <?php
        $var = $_SESSION['userID'];
        $sql = "SELECT * FROM tblcustomerinformation WHERE userID = '$var'";
        $result = $conn->query($sql);
        $row = $result->fetch_assoc();
    ?>
    <div class="accCatdiv">
        <p class="accCat">Name: <?php echo $row['Firstname'] . " " . $row['Lastname'] ?></p>

        <a class="edit" id="userName" onclick="editNameBtnFunc()">
            <i class="fa-solid fa-arrow-right"></i>
        </a>

    </div>

    <div class="accCatdiv">
        <p class="accCat">Phone: <?php echo $row['Number'] ?></p>

        <a class="edit" id="userPhone" onclick="editPhoneBtnFunc()">
            <i class="fa-solid fa-arrow-right"></i>
        </a>

    </div>

    <!-- <div class="accCatdiv">
        <p class="accCat">Email:</p>

        <a class="edit" id="userEmail" onclick="editEmailBtnFunc()">
            <i class="fa-solid fa-arrow-right"></i>
        </a>

    </div> -->

    <div class="accCatdiv">
        <p class="accCat">Change Password</p>

        <a class="edit" id="userPass"  onclick="editPasswordBtnFunc()">
            <i class="fa-solid fa-arrow-right"></i>
        </a>

    </div>

</div>

<!-- edit name -->

<div id="editName">

    <div class="editNameHeader">

        <a class="checkOutBack" onclick="editNameBtnFunc()">
            <i class="fa-solid fa-arrow-left"></i>
        </a>

        <p class="editNameTitle">Edit Name</p>
        </input>
        <p class="saveBtn" onclick="EditName()">Save</p>

    </div>
    <br>
    <input type="text" id="editFirstName" placeholder="First Name">
    <input type="text" id="editLastName" placeholder="Last Name">

</div>

<!-- edit phone -->

<div id="editPhone">

    <div class="editPhoneHeader">

        <a class="checkOutBack" onclick="editPhoneBtnFunc()">
            <i class="fa-solid fa-arrow-left"></i>
        </a>

        <p class="editPhoneTitle">Edit Phone</p>

        <p class="saveBtn" onclick="EditContact()">Save</p>

    </div>

    <input type="text" id="editUserPhone" placeholder="Phone Number">

</div>

<!-- edit Email -->

<div id="editEmail">

    <div class="editEmailHeader">

        <a class="checkOutBack" onclick="editEmailBtnFunc()">
            <i class="fa-solid fa-arrow-left"></i>
        </a>

        <p class="editEmailTitle">Edit Email</p>

        <p class="saveBtn">Save</p>

    </div>

    <input type="text" id="editUserEmail" placeholder="User Name"> 

</div>

<!-- edit pass -->

<div id="editPassword">

    <div class="editPasswordHeader">

        <a class="checkOutBack" onclick="editPasswordBtnFunc()">
            <i class="fa-solid fa-arrow-left"></i>
        </a>

        <p class="editPasswordTitle">Edit Password</p>

        <p class="saveBtn" onclick="EditPassword()">Save</p>

    </div>

    <input type="password" id="editUserPassword" placeholder="Password">

    <input type="password" id="confirmPassword" placeholder="Confirm Password">
    <div id="errorMessage"></div>
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