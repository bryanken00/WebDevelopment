<!DOCTYPE html>

<?php
    if(session_status() == PHP_SESSION_NONE)
        session_start();

?>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">

</head>

<body>

    <div class="log">
        <?php include('../includesPHP/topNav.php')?>
    </div>

    

    <br><br>

    <div class="toPayProductInfo">

        <div class="prToPayClientInfo">
            <?php
            if(session_status() == PHP_SESSION_NONE)
                session_start();

                $ref = $_SESSION['SelectProduct'];
                $uID = $_SESSION['userID'];
                $sql = "SELECT DISTINCT a.OrderRefNumber, a.address, a.contact, a.email, CONCAT(b.Firstname, ' ' ,b.Lastname) AS Fullname
                FROM tblordercheckout AS a
                JOIN tblcustomerinformation AS b ON a.UserID = b.UserID WHERE a.OrderRefNumber = '$ref' AND b.UserID = '$uID'";
                $result = $conn->query($sql);
                // echo $sql;
                $row = $result->fetch_assoc();
            ?>
            <p class="deliveryTitle">Information Address</p>
            <p class="refNumber">Reference Number: <?php echo $row['OrderRefNumber']?></p>
            <p class="clientInfo">Name: <?php echo $row['Fullname']?></p>
            <p class="clientAddress">Address: <?php echo $row['address']?></p>
            <p class="clientNo">Contact: <?php echo $row['contact']?></p>
            <p class="clientEmailAddress">Email: <?php echo $row['email']?></p>
        </div>

        <div class="toPayProductDetailsTP">

            <div class="toPayProductDetailsScroll">
                
            <?php

                $sql = "SELECT b.OrderRefNumber, a.ProductName, a.volume, a.Price, a.Quantity, c.prodImg
                FROM tblordercheckoutdata AS a
                JOIN tblorderstatus AS b ON a.OrderRefNumber = b.OrderRefNumber
                JOIN tblproducts AS c ON a.ProductName = c.prodName && a.volume = c.prodVolume
                WHERE b.OrderRefNumber = '$ref' && a.OrderRefNumber = '$ref'";
                $result = $conn->query($sql);
                $Subtotal = 0;
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<div class='toPayProductSeparator'>";
                        echo "<div class='itemPicture'><img class='sampleImg' src='../Products/resources/" . $row['prodImg'] . "' alt='prodIMG.png'></div>";
                        echo "<p class='productName'>" . $row['ProductName'] . "</p>";
                        echo "<p class='productWeight'>" . $row['volume'] . "</p>";
                        echo "<p class='productPrice'>₱" . $row['Price'] . "</p>";
                        echo "<p class='productQuantity'>" . $row['Quantity'] . "</p>";
                        echo "</div>";
                        $Subtotal += $row['Price'] * $row['Quantity'];
                    }
                }

            ?>

                
            </div>
            <?php
            $shipping = 0;

            $totalAmount = $shipping + $Subtotal;

            ?>

            <div class="totalAmountCon">
                    <p class="amount" id="subTotal">Subtotal: <?php echo $Subtotal?></p>
                    <p class="amount" id="shipping">Shipping: <?php echo $shipping?></p>
            </div>
            <p class="totalAmount" id="totalAmount">Total: <?php echo $totalAmount?></p>

        </div>

    </div>


    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>