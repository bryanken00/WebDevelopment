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

    <div class="admin-account-con">

        <div class="admin-orders-con">

            <div class="admin-orders-header">
                <p>title</p>
            </div>

            <div class="admin-orders-content">

                <div class="admin-orders">
                    
                    <div class="orders-info">

                        <div class="info-divider">
                            <p class="adn-order-refno">#49324</p>
                            <p class="adn-order-client">Miguel Besa</p>
                            <p class="adn-order-stats">pending</p>
                        </div>

                        <p class="adn-order-total-lbl">Total Amount:</p>
                        <p class="adn-order-total">₱50</p>
                        
                    </div>
                </div>

            </div>

        </div>

        <div class="admin-client-order">

            <div class="admin-order-summary">
                <div class="adn-order-summary-header">
                    <p class="adn-order-summary-title">Order Summary</p>
                    <p class="adn-order-summary-refno">#3213242</p>
                </div>

                <div class="adn-order-summary-con">

                    <div class="adn-order-summay-content">
                        <p class="adn-order-title">Customer</p>
                        <p class="adn-order-info" id="adn-order-customer">RoseSHit</p>
                    </div>

                    <div class="adn-order-summay-content">
                        <p class="adn-order-title">Order Date</p>
                        <p class="adn-order-info" id="adn-order-date">02/12/23</p>
                    </div>

                    <div class="adn-order-summay-content">
                        <p class="adn-order-title">Address</p>
                        <p class="adn-order-info" id="adn-order-address">Binangonan, Rizal</p>
                    </div>
                </div>

            </div>

            <div class="admin-order-status">

                <div class="adn-order-status-header">
                    <p class="adn-order-status-title">Order Status</p>
                </div>

                <div class="adn-order-status-con">
                    <button class="adn-order-status-btn">Order Approved</button>
                    <button class="adn-order-status-btn">To Ship</button>
                    <button class="adn-order-status-btn">On Delivery</button>
                    <button class="adn-order-status-btn">Delivery Complete</button>
                    <button class="adn-order-status-btn">Invoice</button>   
                </div>

            </div>

            <div class="admin-order-info">

                <div class="admin-order-info-header">
                    <p class="admin-order-info-title">Product Name</p>
                    <p class="admin-order-info-title">Quantity</p>
                    <p class="admin-order-info-title">Price</p>
                    <p class="admin-order-info-title">Discount</p>
                    <p class="admin-order-info-title">Total Price</p>
                </div>

                <div class="admin-order-info-content">
                    <div class="admin-order-info-divider">
                        <p class="admin-order-info-prod" id="admin-order-product">Soap</p>
                        <p class="admin-order-info-prod" id="admin-order-quantity">10</p>
                        <p class="admin-order-info-prod" id="admin-order-price">₱7</p>
                        <p class="admin-order-info-prod" id="admin-order-discount">2%</p>
                        <p class="admin-order-info-prod" id="admin-order-totalPrice">₱7</p>
                    </div>
                </div>

                <div class="admin-order-info-footer">
                    <p class="admin-order-info-footer-content" id="adm-item">Item: 7</p>
                    <p class="admin-order-info-footer-content" id="adm-totalQuatity">Total Quantity: 7</p>
                    <p class="admin-order-info-footer-content" id="adm-totalDiscount">Total Discount: 7%</p>
                    <p class="admin-order-info-footer-content" id="adm-totalAmount">Total Amount: ₱7</p>
                </div>

            </div>

        </div>

    </div>

    

    <?php include('../includesPHP/footer.php')?>


    <script src="../javascript/web.js"></script>
</body>
</html>