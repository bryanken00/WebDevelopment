<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/orderCheckout.css">

</head>

<body>

  <div class="topNavOrder">
    <?php include('../includesPHP/topNav.php')?>
  </div>

  <div class="container">
    <div class="left-div">

            <div class="deliveryAdd">

                <p class="deliveryTitle">Address: <?php echo $row['Address']?></p>
                <p class="clientInfo">Name: <?php echo $row['Firstname'] . " " . $row['Lastname'] ?></p>
                <p class="clientNo">Contact: <?php echo $row['Number']?></p>
                <p class="clientEmailAddress">Email: <?php echo $row['email']?></p>
                <!-- <p class="clientAddress">rizal</p>
                <p class="zipCode">1940</p> -->

                <button class="placeOrderButton" onclick="placeOrder()">Place Order</button>

            </div>
    </div>
    <div class="right-div">
    <?php
                if (!empty($_SESSION['checkedCheckboxesData'])) {
                    $dataLength = count($_SESSION['checkedCheckboxesData']);
                
                    for ($i = 0; $i < $dataLength; $i++) {
                        include('../includesPHP/database.php');
                        echo "<div class='prodCheckOutSeperator'>";
                        $itemName = $_SESSION['checkedCheckboxesData'][$i]['itemName'];
                        $img = $_SESSION['checkedCheckboxesData'][$i]['productImg'];
                        $quantityNo = $_SESSION['checkedCheckboxesData'][$i]['quantityNo'];
                        $sql = "SELECT * FROM tblproducts WHERE prodName = '$itemName'";
                        $result = $conn->query($sql);
                        $row = $result->fetch_assoc();
                        echo "<div class='itemPicture'><img class='sampleImg' src='$img'></div>";
                        echo "<p class='productName'>" . $row['prodName'] . "</p>";
                        echo "<p class='productWeight'>" . $row['prodVolume'] . "</p>";
                        echo "<p class='productPrice'>" . $row['prodPrice'] . "</p>";
                        echo "<p class='productQuantity'>$quantityNo</p>";
                        echo "</div>";
                        echo "<br><br><br><br><br><br>";
                    }
                
                } else {
                    $_SESSION['datalist'] = "No data found in session.";
                    // echo $_SESSION['datalist'];
                }
                ?>
    </div>
  </div>

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJAX.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>