<?php
// if(session_status() == PHP_SESSION_NONE){
//     session_start();
// }
//  if (!empty($_SESSION['checkedCheckboxesData'])) {
//     $dataLength = count($_SESSION['checkedCheckboxesData']);
    
//     for ($i = 0; $i < $dataLength; $i++) {
//       $itemName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
//       $itemDetails = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
//       $itemPrice = $_SESSION['checkedCheckboxesData'][$i]['itemPrice'];
//       $productImg = $_SESSION['checkedCheckboxesData'][$i]['productImg'];
//       $quantityNo = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];

//       echo "Item Name: " . $itemName . "<br>";
//       echo "Item Details: " . $itemDetails . "<br>";
//       echo "Item Price: " . $itemPrice . "<br>";
//       echo "Product Image: " . $productImg . "<br>";
//       echo "Quantity: " . $quantityNo . "<br>";
//       echo "<br>";
//     }
//   } else {
//     $_SESSION['datalist'] = "No data found in session.";
//     echo $_SESSION['datalist'];
//   }

include('../includesPHP/database.php');
echo "<div class='prodCheckOutSeperator'>";
$itemName = "Age Eraser Soap";
$sql = "SELECT * FROM tblproducts WHERE prodName = '$itemName'";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
// $itemDetails = $_SESSION['checkedCheckboxesData'][$i]['itemDetails'];
// $itemPrice = $_SESSION['checkedCheckboxesData'][$i]['itemPrice'];
// $productImg = $_SESSION['checkedCheckboxesData'][$i]['productImg'];
$quantityNo = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
$img = 'resources/' . $row['prodImg'];
echo $img;
echo "<div class='itemPicture'><img class='sampleImg' src='$img'></div>";
echo "<p class='productName'>" . $row['prodName'] . "</p>";
echo "<p class='productWeight'>" . $row['prodVolume'] . "</p>";
echo "<p class='productPrice'>" . $row['prodPrice'] . "</p>";
echo "<p class='productQuantity'>$quantityNo</p>";
echo "</div>";
echo "<br><br><br><br><br><br>";

?>