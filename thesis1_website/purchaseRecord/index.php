<!DOCTYPE html>

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

    <div class="purchaseRecord">

        <a class="prItem active" id="prToPay" href="../purchaseRecord/index.php">
            <p class="prTitle">to Pay</p>
        </a>

        <a class="prItem" id="prToShip" href="../purchaseRecord/toShip.php">
            <p class="prTitle">to Ship</p>
        </a>

        <a class="prItem" id="prToReceive" href="../purchaseRecord/toReceive.php">
            <p class="prTitle">to Receive</p>
        </a>

        <a class="prItem" id="prToReturn" href="../purchaseRecord/return.php">
            <p class="prTitle">to Return</p>
        </a>

        <a class="prItem" id="prToRate" href="../purchaseRecord/completed.php">
            <p class="prTitle">Completed</p>
        </a>

    </div>

    <div class="prToPay">

        <div class="prToPayOrderSeparator">

                <?php
                    if (session_status() == PHP_SESSION_NONE)
                        session_start();

                    $userID = $_SESSION['userID'];
                    // $sql = "SELECT b.ProductName, b.volume, b.Quantity, b.Price, (b.Quantity * b.Price) AS totalAmount FROM tblorderstatus AS a JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber JOIN tblordercheckout AS c ON c.OrderRefNumber = a.OrderRefNumber WHERE c.UserID = '$userID' AND a.Status = 'toPay'";
                    $sql = "SELECT DISTINCT a.OrderRefNumber
                    FROM tblorderstatus AS a JOIN
                    tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber WHERE a.Status = 'toPay'";
                    $result = $conn->query($sql);
                    $totalAmount = 0;
                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<div class='prToPayProduct'>";
                                echo "<div class='prToPayItemPicture'>";
                                    echo "<img class='prSampleImg' src='productImg/fsoap.png' alt='productImg' id='productImg'>";
                                echo "</div>";
                                echo "<div class='prToPayProductDetails'>";
                                    // echo "<p class='prToPayProductName'>" . $row['ProductName'] . "</p>";
                                    // echo "<p class='prToPayProductWeight'>" . $row['volume'] . "</p>";
                                    // echo "<p class='prToPayProductQuantity'>" . $row['Quantity'] . "</p>";
                                    // echo "<p class='prToPayProductPrice'>" . $row['Price'] . "</p>";
                                    // $totalAmount += $row['totalAmount'];
                                    echo "<p class='prToPayProductName'>" . $row['OrderRefNumber'] . "</p>";
                                    echo "<p class='prToPayProductWeight'>" . $row['OrderRefNumber'] . "</p>";
                                    echo "<p class='prToPayProductQuantity'>" . $row['OrderRefNumber'] . "</p>";
                                    echo "<p class='prToPayProductPrice'>" . $row['OrderRefNumber'] . "</p>";
                                    
                                echo "</div>";
                            echo "</div>";
                        }
                    }else{
                        echo "<p>No order Yet</p>";
                    }
                ?>

                <div class="prToPayFooter">

                    <button class="pending">Pending</button>
                    
                    <label class="orderRefNo">Reference Number:</label>

                    <label class="prToPayTotalPrice">Amount Payable: <?php echo $totalAmount?></label>

                </div>
        
            </div>
        
    </div>

    
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>