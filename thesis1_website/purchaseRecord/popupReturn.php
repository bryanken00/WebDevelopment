<!DOCTYPE html>
<?php
    if(session_status() == PHP_SESSION_NONE)
        session_start();
    $ref = $_GET['ref'];
?>
<html lang="en">
<head>
    <title>Return</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <div class="return-products-info">
        <p class="ret-title">Product Return</p>

        <p class="ret-cat">List of Products: </p>
        <input type="checkbox" id="returnProductList" name="returnProductList">
        <label for="returnProductList">soap</label><br>

        <p class="ret-cat">Reason: </p>
        <button class="ret-reason-btn" onclick="retconfunc()">Category </button>

        <p class="ret-cat">Details: </p>
        <input type="text" class="ret-details-txtbox">

        <p class="ret-cat">Picture: </p>
            <form action="/upload" method="post" enctype="multipart/form-data">
                <input class="ret-picture-box" type="file" name="image" accept="image/*">
            </form>

        <button class="ret-confirm">Confirm</button>
    </div>

    <div id="ret-reason-cat">
        <p class="cat-reason">Defective or Damage Product</p>
        <p class="cat-reason">Wrong Item Received</p>
        <p class="cat-reason">Quality or Performance Issues</p>
        <p class="cat-reason">Packaging or Dispenser Issues</p>
        <p class="cat-reason">Other</p>
    </div>  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/rebranding.js"></script>
    <script src="../javascript/web.js"></script>
    
</body>
</html>