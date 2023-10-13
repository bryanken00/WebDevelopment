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
        <?php include('../includesPHP/database.php')?>  
    </div>
    

    <div class="admin-side">

        <a class="admin-side-toggle-btn" onclick="adminSideToggleBtnFunction()">
            <i class="fa-solid fa-bars"></i>
        </a>
        
        <div id="admin-side-nav">

            <div class="admin-side-content-icn">
                <i id="admin-side-icn" class="fa-regular fa-file"></i>
                <a class="admin-side-icn-label" href="#">For Approval</a>
            </div>

            <div class="admin-side-content-icn">
                <i id="admin-side-icn" class="fa-regular fa-file"></i>
                <a class="admin-side-icn-label" href="#">Processing</a>
            </div>

            <div class="admin-side-content-icn">
                <i id="admin-side-icn" class="fa-regular fa-file"></i>
                <a class="admin-side-icn-label" href="#">Completed</a>
            </div>

        </div>

        <br>

        <div class="adminside-btn-con">

        </div>


        <div id="admin-account-con">


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
            
            <div class="admin-client-order" id="Admin-OrderList">
                
            </div>

        </div>

    </div>

    

    <!-- <?php include('../includesPHP/footer.php')?> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../javascript/web.js"></script>
    <script src="../javascript/admin.js"></script>
</body>
</html>