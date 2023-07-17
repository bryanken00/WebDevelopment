<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <div class="courierSide">

        <div class="innerCourierSide">

            <div class="orderLists">

                <div class="orderLists-header">
                    <p class="orderLists-title">Order Lists</p>
                </div>

                <div class="orderList-container">

                    <div class="orderList-item-separator">

                        <div class="orderList-item">

                            <div class="orderList-clientInfo">
                                <p class="orderList-refNo">Ref. No. 32038</p>
                                <p class="orderList-clientName">Miguel</p>
                                <p class="orderList-status">pending</p>
                            </div>

                            <p class="orderList-TA">Total Amount</p>
                            <p class="orderList-totalAmount">₱100</p>

                        </div>

                    </div>
                </div>

            </div>

            <div class="orderContainer">

                <div class="orderSummary">

                    <div class="orderSummary-header">
                        <p class="orderSummary-header-title">Order Summary</p>
                        <p class="orderSummary-refNo">#32038</p>
                    </div>

                    <div class="orderSummary-details">

                        <div class="orderSummary-clientCompany">
                            <p class="orderSummary-title">Company</p>
                            <p class="orderSummary-clientCompany-company">Rose Mario</p>
                        </div>

                        <div class="orderSummary-receiver">
                            <p class="orderSummary-title">Customer</p>
                            <p class="orderSummary-receiver-rec">besa</p>
                        </div>

                        <div class="orderSummary-orderDate">
                            <p class="orderSummary-title">Order date</p>
                            <p class="orderSummary-orderDate-date">04/13/2023</p>
                        </div>

                        <div class="orderSummary-address">
                            <p class="orderSummary-title">Address</p>
                            <p class="orderSummary-address-add">Binangonan Rizal</p>
                        </div>
                        
                    </div>

                </div>

                <div class="orderStatus">

                    <div class="orderStatus-header">
                        <p class="orderStatus-header-title">Order Status</p>
                    </div>

                    <div class="orderStatus-buttons">

                        <button class="orderStatus-btn">Pending</button>
                        <button class="orderStatus-btn">On Shipment</button>
                        <button class="orderStatus-btn">Completed</button>

                    </div>

                </div>

                <div class="orderDetails">

                    <div class="orderDetails-header">
                        
                    </div>

                    <div class="orderDetails-footer"></div>

                </div>

            </div>

        </div>

    </div>

    <?php include('../includesPHP/footer.php')?>
    <script src="../javascript/regionAPI.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>