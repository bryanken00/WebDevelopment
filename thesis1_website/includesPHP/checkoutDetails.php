
    <div class="checkOutHeader">

        <a class="checkOutBack" onclick="checkOutBtnFunc()">
            <i class="fa-solid fa-arrow-left"></i>
        </a>
        
        <p class="checkOutTitle">Check Out</p>
    
    </div>

    <div class="deliveryAdd">

        <p class="deliveryTitle">Address:</p>
        <p class="clientInfo">raven</p>
        <p class="clientNo">1823381</p>
        <p class="clientAddress">rizal</p>
        <p class="zipCode">1940</p>

    </div>

    <div class="productDetails" id="productDetails">
        <?php
            if (!empty($_SESSION['checkedCheckboxesData'])) {
                $dataLength = count($_SESSION['checkedCheckboxesData']);
            
                for ($i = 0; $i < $dataLength; $i++) {
                $itemName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
                $itemDetails = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
                $itemPrice = $_SESSION['checkedCheckboxesData'][$i]['itemPrice'];
                $productImg = $_SESSION['checkedCheckboxesData'][$i]['productImg'];
                $quantityNo = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
            
                echo "<div class='itemPicture'><img class='sampleImg' src='$productImg'></div>";
                echo "<p class='productName'>$itemName</p>";
                // <!-- San to hinugot -->
                // <!-- <p class="productWeight">21g</p> -->
                echo "<p class='productPrice'>$itemPrice</p>";
                echo "<p class='productQuantity'>$quantityNo</p>";
                echo "<br><br><br><br><br><br>";
                }
            
            } else {
                $_SESSION['datalist'] = "No data found in session.";
                // echo $_SESSION['datalist'];
            }
        
        ?>

                    
    </div>

    <label class="totalPrice">Total: </label>

    <button class="placeOrderButton">Place Order</button>