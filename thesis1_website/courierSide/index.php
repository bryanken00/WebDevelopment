<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <div class="courierSide-navbar">
        
        <div class="courierSide-user">

            <a class="courierSide-icn" onclick="courierUserFunction()">
                <i class="fa-solid fa-user"></i>
            </a>

        </div>

    </div>

    <div class="courierSide">

            <div class="orderLists">

                <div class="orderLists-header">
                    <p class="orderLists-title">Order Lists</p>
                </div>

                <div class="orderList-container">

                    <div class="orderList-item-separator">

                        <a class="orderList-item" href="../courierSide/orders.php">

                            <div class="orderList-clientInfo">
                                <p class="orderList-refNo">Ref. No. 32038</p>
                                <p class="orderList-clientName">Miguel</p>
                                <p class="orderList-status">pending</p>
                            </div>

                            <p class="orderList-TA">Total Amount</p>
                            <p class="orderList-totalAmount">₱100</p>

                        </a>

                    </div>
                </div>

            </div> 

    </div>

    <script src="../javascript/web.js"></script>

</body>

</html>