<?php
if(session_status() == PHP_SESSION_NONE){
    session_start();
}
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
    echo $_SESSION['datalist'];
  }

?>