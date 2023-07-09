<?php
    if(session_status() == PHP_SESSION_NONE)
    session_start();
    include('../includesPHP/database.php');

    $uID = $_SESSION['userID'];
    $data = array();

    $sql = "SELECT a.prodImg, b.prodName, b.prodVariant, a.prodPrice, b.prodQuantity
    FROM tblproducts AS a
    JOIN tblCartData AS b ON a.prodName = b.prodName AND a.prodVolume = b.prodVariant
    JOIN tblcustomeraccount AS c ON b.uID = c.UserID
    WHERE c.UserID = '$uID'";
    $result = $conn->query($sql);
    echo "<br>";
    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }
        mysqli_free_result($result);
    }
    $sqlRebranding = "SELECT b.prodImg, b.prodName, b.prodVolume AS prodVariant, b.prodPrice, a.prodQuantity
    FROM tblcartdata AS a
    JOIN tblrebrandingproducts AS b ON a.prodName = a.prodName AND b.prodVolume = a.prodVariant AND b.userID = a.uID
    JOIN tblcustomeraccount AS c ON c.UserID = a.uID
    WHERE a.uID = '$uID'
    GROUP BY a.prodQuantity";
    $resultRebranding = $conn->query($sqlRebranding);
    if ($resultRebranding) {
        while ($row = mysqli_fetch_assoc($resultRebranding)) {
            $data[] = $row;
        }
        mysqli_free_result($resultRebranding);
    }

    if (!empty($data)) {
        for ($i = 0; $i < count($data); $i++) {
                $prodImg = $data[$i]['prodImg'];
                $prodName = $data[$i]['prodName'];
                $prodVariant = $data[$i]['prodVariant'];
                $prodPrice = $data[$i]['prodPrice'];
                $prodQuantity = $data[$i]['prodQuantity'];
                echo "<input type='checkbox' id='productCheckbox' class='productCheckbox' onclick=\"clickCheckbox()\">";

                echo "<div class='itemPicture'>";
                    echo "<img class='sampleImg' id='productImg' src='../Products/resources/$prodImg' alt='rebranding.img'>";
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
        }
    }else{
        echo "No orders found.";
    }
?>

<div class="cartFooter">

    <input type="checkbox" id="productCheckboxAll" class="productCheckboxAll" onclick="checkAllBox()" value="All"> 
    <label for="productCheckboxAll" class="productCheckboxAll">All</label>

    <label class="productTotal"> Total: ₱0.00</label>

    <button onclick="checkOutBtnFunc()" class="checkOutButton">Check Out</button>
</div>