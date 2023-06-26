<?php
    if(session_status() == PHP_SESSION_NONE)
    session_start();
    include('../includesPHP/database.php');
    $uID = $_SESSION['userID'];
    $sql = "SELECT a.prodImg, b.prodName, b.prodVariant, a.prodPrice, b.prodVariant, b.prodQuantity
    FROM tblproducts AS a
    JOIN tblCartData AS b ON a.prodName = b.prodName AND a.prodVolume = b.prodVariant
    JOIN tblcustomeraccount AS c ON b.uID = c.UserID
    WHERE c.UserID = '$uID'";
    $result = $conn->query($sql);
    echo "<br>";
    if (!$result) {
        echo "Error executing query: " . $conn->error;
    } else {

        // Check if there are any rows
        
        if ($result->num_rows > 0) {
            $i = 0;
            while ($row = $result->fetch_assoc()) {
                $prodImg = $row['prodImg'];
                $prodName = $row['prodName'];
                $prodVariant = $row['prodVariant'];
                $prodPrice = $row['prodPrice'];
                $prodQuantity = $row['prodQuantity'];
                echo "<input type='checkbox' id='productCheckbox' class='productCheckbox' onclick=\"clickCheckbox()\">";

                echo "<div class='itemPicture'>";
                    echo "<img class='sampleImg' id='productImg' src='../Products/resources/$prodImg'>";
                echo "</div>";

                echo "<a class='icnTrash'><i class='fa-solid fa-trash' onclick='deleteCartItem(\"$prodName\", \"$prodVariant\")'></i></a>";

                echo "<div class='itemName'>";
                    echo "<p class='iName'>$prodName</p>";
                    echo "<p class='iDetails'>$prodVariant</p>";
                    echo "<p class='iPrice'>₱ $prodPrice</p>";
                echo "</div>";
                echo "<div class='itemQuantity'>";
                    echo "<a class='icnQuantity' onclick='quantityMinus($i)'><i class='fa-solid fa-minus'></i></a>";
                    echo "<input type='text' class='quantityNo' value='$prodQuantity' min='1'>";
                    echo "<a class='icnQuantity' onclick='quantityAdd($i)'><i class='fa-solid fa-plus'></i></a>";
                echo "</div>";
                $i++;
            }
        }else{
            echo "No orders found.";
        }
    }
?>

<div class="cartFooter">

    <input type="checkbox" id="productCheckboxAll" class="productCheckboxAll" onclick="checkAllBox()" value="All"> 
    <label for="productCheckboxAll" class="productCheckboxAll">All</label>

    <label class="productTotal"> Total: ₱0.00</label>

    <button onclick="checkOutBtnFunc()" class="checkOutButton">Check Out</button>
</div>