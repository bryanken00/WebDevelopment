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

    <div class="warehouse-account-con">

        <div class="warehouse-orders-con">

            <div class="warehouse-orders-header">
                <p>Orders</p>
            </div>

            <div class="warehouse-orders-content">

                <div class="warehouse-orders">
                    <div class="warehouse-orders-info">
                        <div class="warehouse-info-divider">
                            <p class="warehouse-order-refno">7319823</p>
                            <p class="warehouse-approveby-title">Approved By:</p>
                            <p class="warehouse-order-client">raven</p>
                            <p class="warehouse-approveby">chuchay</p>
                        </div>

                        <p class="warehouse-items-title">Items:</p>
                        <p class="warehouse-item">9</p>

                        <p class="warehouse-order-total-lbl">Total Amount:</p>
                        <p class="warehouse-order-total">97</p>
                    </div>
                </div>

            </div>

        </div>
        
        <div class="warehouse-client-order">
            
            <div class="warehouse-order-summary">

                <div class="warehouse-summary-content">
                    <p class="warehouse-summary-lbl">PO Number</p>
                    <p class="warehouse-summary">43231</p>
                </div>

                <div class="warehouse-summary-content">
                    <p class="warehouse-summary-lbl">Approve By</p>
                    <p class="warehouse-summary">Raven</p>
                </div>

                <div class="warehouse-summary-content">
                    <p class="warehouse-summary-lbl">Customer</p>
                    <p class="warehouse-summary">rose</p>
                </div>

                <div class="warehouse-summary-content">
                    <p class="warehouse-summary-lbl">Ordered Date</p>
                    <p class="warehouse-summary">12/4/12</p>
                </div>

                <div class="warehouse-summary-content">
                    <p class="warehouse-summary-lbl">Address</p>
                    <p class="warehouse-summary">binangonan,rizal</p>
                </div>

            </div>

            <div class="warehouse-order-info">

                <div class="warehouse-product-info-header">
                    <p class="warehouse-product-info-lbl">Product Name</p>
                    <p class="warehouse-product-info-lbl">Quantity</p>
                    <p class="warehouse-product-info-lbl">Price</p>
                    <p class="warehouse-product-info-lbl">Discount</p>
                    <p class="warehouse-product-info-lbl">Total Price</p>
                </div>

                <div class="warehouse-product-info">

                    <div class="warehouse-product-info-divider">
                        <p class="warehouse-product">soap</p>
                        <p class="warehouse-product">2</p>
                        <p class="warehouse-product">2</p>
                        <p class="warehouse-product">0</p>
                        <p class="warehouse-product">74</p>
                    </div>
        
                </div>

                <div class="warehouse-product-footer">
                    <p class="warehouse-product-footer-lbl">Item: 7</p>
                    <p class="warehouse-product-footer-lbl">Total Quantity: 107</p>
                    <p class="warehouse-product-footer-lbl">Total Discount:</p>
                    <p class="warehouse-product-footer-lbl">Total Amount: 321</p>
                    <button class="warehouse-process-btn">Process</button>
                </div>

            </div>


        </div>

    </div>
    

    <!-- <?php include('../includesPHP/footer.php')?> -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../javascript/web.js"></script>
    <script src="../javascript/admin.js"></script>
</body>
</html>