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

    <div id="overlay"></div>

    <br><br>

    <div class="purchaseRecord">

        <a class="prItem active" id="prToPay" href="../purchaseRecord/?Cat=toPay">
            <p class="prTitle">to Pay</p>
        </a>

        <a class="prItem" id="prToShip" href="../purchaseRecord/?Cat=toShip">
            <p class="prTitle">to Ship</p>
        </a>

        <a class="prItem" id="prToReceive" href="../purchaseRecord/?Cat=toReceive">
            <p class="prTitle">to Receive</p>
        </a>

        <a class="prItem" id="prToReturn" href="../purchaseRecord/?Cat=Return">
            <p class="prTitle">to Return</p>
        </a>

        <a class="prItem" id="prToRate" href="../purchaseRecord/?Cat=Completed">
            <p class="prTitle">Completed</p>
        </a>

    </div>

    <div class="prToPay">

        

        <?php
        if(!isset($_GET['Cat']))
            homepage();

        function homepage(){
                echo "<script>";
                echo "window.location.href = '../homepage/';";
                echo "</script>";
        }

        $tab = $_GET['Cat'];
            $userID = $_SESSION['userID'];
            // $sql = "SELECT b.ProductName, b.volume, b.Quantity, b.Price, (b.Quantity * b.Price) AS totalAmount FROM tblorderstatus AS a JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber JOIN tblordercheckout AS c ON c.OrderRefNumber = a.OrderRefNumber WHERE c.UserID = '$userID' AND a.Status = 'toPay'";
            // $sql = "SELECT OrderRefNumber, ProductName, Volume, Price, Quantity
            // FROM (
            //     SELECT b.OrderRefNumber, b.ProductName, b.Volume, b.Price, b.Quantity,
            //             ROW_NUMBER() OVER (PARTITION BY b.OrderRefNumber ORDER BY b.ProductName) AS RowNumber
            //     FROM tblorderstatus AS a
            //     JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
            //     JOIN tblordercheckout AS c ON c.OrderRefNumber = b.OrderRefNumber
            //     JOIN tblproducts AS d ON b.ProductName = d.prodName && b.volume c.prodVolume
            //     WHERE a.Status = '$tab' AND c.UserID = '$userID'
            // ) AS subquery
            // WHERE RowNumber = 1;";

            // $sql = "SELECT OrderRefNumber, ProductName, Volume, Price, Quantity, prodImg
            // FROM ( SELECT b.OrderRefNumber, b.ProductName, b.Volume, b.Price, b.Quantity, d.prodImg, ROW_NUMBER() OVER (PARTITION BY b.OrderRefNumber ORDER BY b.ProductName) AS RowNumber
            // FROM tblorderstatus AS a
            // JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
            // JOIN tblordercheckout AS c ON c.OrderRefNumber = b.OrderRefNumber
            // JOIN tblproducts AS d ON b.ProductName = d.prodName && b.volume = d.prodVolume
            //       WHERE a.Status = '$tab' AND c.UserID = '$userID' ) AS subquery
            // WHERE RowNumber = 1";

            // local variable
            $datapurchaseRecord = array();
            $totalPrice = 0;

            // if tab = toPay
            //kbnprods
            $sql = '';
            $sqlRebranding = '';
            if($tab == 'toPay'){
                $sql = "SELECT b.OrderRefNumber, b.ProductName, b.Volume, b.Price, b.Quantity, d.prodImg,
                SUM(b.Price * b.Quantity) AS TotalPrice, Expiration
                FROM tblorderstatus AS a
                JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
                JOIN tblordercheckout AS c ON c.OrderRefNumber = b.OrderRefNumber
                JOIN tblproducts AS d ON b.ProductName = d.prodName AND b.volume = d.prodVolume
                JOIN tblorderexpirationtime AS e ON e.OrderRefNumber = a.OrderRefNumber
                WHERE a.Status = '$tab' AND c.UserID = '$userID'
                GROUP BY b.OrderRefNumber;";
                
                $result = $conn->query($sql);
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $datapurchaseRecord[] = $row;
                    }
                    mysqli_free_result($result);
                }
    
                //rebranding
                $sqlRebranding = "SELECT b.OrderRefNumber, b.ProductName, b.Volume, b.Price, b.Quantity, d.prodImg,
                SUM(b.Price * b.Quantity) AS TotalPrice, e.Expiration
                FROM tblorderstatus AS a
                JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
                JOIN tblordercheckout AS c ON c.OrderRefNumber = b.OrderRefNumber
                JOIN tblrebrandingproducts AS d ON b.ProductName = d.prodName AND b.volume = d.prodVolume
                JOIN tblorderexpirationtime AS e ON e.OrderRefNumber = a.OrderRefNumber
                WHERE a.Status = '$tab' AND c.UserID = '$userID'
                GROUP BY b.OrderRefNumber;";
            } else{
                $sql = "SELECT b.OrderRefNumber, b.ProductName, b.Volume, b.Price, b.Quantity, d.prodImg,
                SUM(b.Price * b.Quantity) AS TotalPrice
                FROM tblorderstatus AS a
                JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
                JOIN tblordercheckout AS c ON c.OrderRefNumber = b.OrderRefNumber
                JOIN tblproducts AS d ON b.ProductName = d.prodName AND b.volume = d.prodVolume
                WHERE a.Status = '$tab' AND c.UserID = '$userID'
                GROUP BY b.OrderRefNumber;";
                
                $result = $conn->query($sql);
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $datapurchaseRecord[] = $row;
                    }
                    mysqli_free_result($result);
                }
    
                //rebranding
                $sqlRebranding = "SELECT b.OrderRefNumber, b.ProductName, b.Volume, b.Price, b.Quantity, d.prodImg,
                SUM(b.Price * b.Quantity) AS TotalPrice
                FROM tblorderstatus AS a
                JOIN tblordercheckoutdata AS b ON a.OrderRefNumber = b.OrderRefNumber
                JOIN tblordercheckout AS c ON c.OrderRefNumber = b.OrderRefNumber
                JOIN tblrebrandingproducts AS d ON b.ProductName = d.prodName AND b.volume = d.prodVolume
                WHERE a.Status = '$tab' AND c.UserID = '$userID'
                GROUP BY b.OrderRefNumber;";
            }

            $resultRebranding = $conn->query($sqlRebranding);
            if (mysqli_num_rows($resultRebranding) > 0) {
                while ($row = mysqli_fetch_assoc($resultRebranding)) {
                    $datapurchaseRecord[] = $row;
                }
                mysqli_free_result($resultRebranding);
            }
            if(!empty($datapurchaseRecord)){
                for($i = 0; $i < count($datapurchaseRecord); $i++){
                    $ref = $datapurchaseRecord[$i]['OrderRefNumber'];
                    $img = $datapurchaseRecord[$i]['prodImg'];
                    $prodName = $datapurchaseRecord[$i]['ProductName'];
                    $prodVolume = $datapurchaseRecord[$i]['Volume'];
                    $prodQuantity = $datapurchaseRecord[$i]['Quantity'];
                    $prodPrice = $datapurchaseRecord[$i]['Price'];
                    $prodTotalPrice = $datapurchaseRecord[$i]['TotalPrice'];
                    if(isset($datapurchaseRecord[$i]['Expiration'])){
                        $expiration = $datapurchaseRecord[$i]['Expiration'];
                        $now = time();
                        $expirationTimestamp = strtotime($expiration);
                        $remainingTime = max(0, $expirationTimestamp - $now);
                        $days = floor($remainingTime / (60 * 60 * 24));
                        $remainingTime -= $days * (60 * 60 * 24);
                        $hours = floor($remainingTime / (60 * 60));
                        $remainingTime -= $hours * (60 * 60);
                        $minutes = floor($remainingTime / 60);
                    }
                    echo "<div class='prToPayProduct'>";
                        echo "<a class='prToPayOrderSeparator' href='../purchaseRecord/toPayProductInfo.php?ref=$ref' id='$ref' >";
                        echo "<div class='prToPayItemPicture'>";
                            echo "<img class='prSampleImg' src='../Products/resources/$img' alt='productImg' id='productImg'>";
                        echo "</div>";
                        echo "<div class='prToPayProductDetails'>";
                            echo "<p class='prToPayProductName'>$prodName</p>";
                            echo "<p class='prToPayProductWeight'>$prodVolume</p>";
                            echo "<p class='prToPayProductQuantity'>x$prodQuantity</p>";
                            echo "<p class='prToPayProductPrice'>₱$prodPrice</p>";
                        echo "</div>";
                        echo "</a>";
                        echo "<div class='prToPayInfo'";
                            echo "<label class='orderRefNo'>Reference Number: <b>$ref</b></label>";
                            if($tab == 'toPay')
                                echo '<label class="orderTimeLimit" id="countdown-' . $ref . '">Pay before: ' . $days . ' day(s) ' . $hours . ' hour(s) ' . $minutes . ' min(s)</label>';
                        $totalPrice += $prodTotalPrice;
                        echo "<label class='prToPayTotalAmount'>Amount Payable: $prodTotalPrice</label>";
                        echo "<button class='cancelbtn'>Cancel</button>";
                            if($tab == 'Completed')
                                echo "<button class='retbtn' onclick=\"openPopup('$ref')\">Return</button>";
                        echo "</div>";
                    echo "</div>";
                    echo "<hr class='hrdivider'>";
                }
            }
            else{
                echo "<p>No order Yet</p>";
            }
        ?>

        <script type="text/javascript">
            var popup;

            function openPopup(ref,) {
                var url = '../purchaseRecord/popupReturn.php?ref=' + ref;
                var width = 500;
                var height = 600;
                var left = (window.innerWidth - width) / 2;
                var top = (window.innerHeight - height) / 2;

                if (popup && !popup.closed) {
                    popup.focus();
                } else {
                    popup = window.open(url, '_blank', 'width=' + width + ',height=' + height + ',left=' + left + ',top=' + top);
                }
            }
        </script>
        <div class="prToPayFooter">
            
            <label class="prToPayTotalPrice">Amount Payable: <?php echo $totalPrice + 0?></label>

        </div>
    </div>

    
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>