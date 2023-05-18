<div id="checkOutCon">

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

    <div class="productDetails">
        <?php
            if (!empty($_SESSION['checkedCheckboxesData'])) {
                $dataLength = count($_SESSION['checkedCheckboxesData']);
            
                for ($i = 0; $i < $dataLength; $i++) {
                $itemName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
                $itemDetails = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
                $itemPrice = $_SESSION['checkedCheckboxesData'][$i]['itemPrice'];
                $productImg = $_SESSION['checkedCheckboxesData'][$i]['productImg'];
                $quantityNo = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
            
                echo "Item Name: " . $itemName . "<br>";
                echo "Item Details: " . $itemDetails . "<br>";
                echo "Item Price: " . $itemPrice . "<br>";
                echo "Product Image: " . $productImg . "<br>";
                echo "Quantity: " . $quantityNo . "<br>";
                echo "<br>";
                }
            
            } else {
                $_SESSION['datalist'] = "No data found in session.";
                // echo $_SESSION['datalist'];
            }
        
        ?>
        <div class="itemPicture">
            <img class='sampleImg' src="<?php $productImg?>" id='productImg'>
        </div>

        <p class="productName">Soap</p>
        <p class="productWeight">21g</p>
        <p class="productPrice">₱40</p>
        <p class="productQuantity">x1</p>

        <br><br>
                    
    </div>

    <label class="totalPrice">Total: </label>

    <button class="placeOrderButton">Place Order</button>

</div>