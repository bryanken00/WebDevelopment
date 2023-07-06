<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">

</head>

<body>
    <?php include('../includesPHP/topNav.php');
    unset($_SESSION['checkedCheckboxesData']);?>

    <br>

    <div class="rebrandingProducts">

        <div class="rebrandingCategory">

            <button onclick="rebrandingBtnFunc()" class="rebrandingCategory-btn">Category</button>

            <div id="rebrandingCat" class="rebrandingCategory-content">

                <a href="#">brandx</a>
                <a href="#">brandx</a>
                <a href="#">brandx</a>

            </div>

        </div>

        <div class="innerRebrandingProducts">

            <div class="gridProduct">
                <div class="productImgCon">
                    <img src="" alt="">
                </div>
                <p class="productLbl" id="productLabel">brand X</p>
                <p class="weight" id="productWeight">kg</p>
                <p class="price" id="productPrice">price</p>
                <p class="stock" id="productStock">stock</p>
                <button class="addCart">Add to Cart</button>
            </div>

        </div>

    </div>
  
    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJAX.js"></script>
    <script src="../javascript/web.js"></script>
    <!-- <script src="../javascript/messenger.js"></script> -->

</body>

</html>
