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
        <?php include('../includesPHP/database.php')?>  
    </div>

    <div class="admin-account-con">

        <div class="admin-orders-con">

            <div class="admin-orders-header">
                <p>Orders</p>
            </div>

            <div class="admin-orders-content">

               
                    
                <table>

                <?php
                $sql = "SELECT a.OrderRefNumber, a.UserID, CONCAT(b.FirstName, ' ' , b.LastName) AS Fullname, c.Status 
                FROM tblOrderCheckout AS a 
                JOIN tblcustomerinformation AS b ON a.UserID = b.UserID 
                JOIN tblorderstatus As c ON c.OrderRefNumber = a.OrderRefNumber";
                $result = $conn->query($sql);

                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $refNumber = $row['OrderRefNumber'];
                        $UserID = $row['UserID'];
                        $Fullname = $row['Fullname'];
                        $Status = $row['Status'];
                        echo "<tr>
                                <div class='admin-orders' name='$refNumber' id ='$refNumber' onclick='adminOrderList(\"$refNumber\",\"$Fullname\")'>
                                    <div class='orders-info'>
                                        <div class='info-divider'>
                                            <p class='adn-order-refno'>$refNumber</p>
                                            <p class='adn-order-client'>$Fullname</p>
                                            <p class='adn-order-stats'>$Status</p>
                                        </div>

                                    <p class='adn-order-total-lbl'>Total Amount:</p>
                                    <p class='adn-order-total'>₱50</p>
                                    
                                    </div>
                                </div>
                            </tr>";
                    }
                }
                ?>          
                </table>


            </div>

        </div>
        
        <div class="admin-client-order">
            
        </div>

    </div>

    

    <!-- <?php include('../includesPHP/footer.php')?> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../javascript/web.js"></script>
    <script src="../javascript/admin.js"></script>
</body>
</html>