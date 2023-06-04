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

    <div class="productDescriptionCon">

        <div class="itemImage">
            <img class="ageEsaserImg" id="productImg" src="resources/fsoap.png">
        </div>

        <div class="itemDesciption">

            <div class="itemDes">

                <p class="itemName">Age Eraser Soap</p>

                <p class="itemPrice">₱100</p>

            </div>

            <button class="addCart">Add to Cart</button>

            <ul>
                <li id="expandInfo">
                    <p>Description</p>
                    <i id="expandIcn" class="fa-sharp fa-solid fa-caret-down"></i>
                </li>

                <li id="expandInfo">
                    <p>Ingredients</p>
                    <i id="expandIcn" class="fa-sharp fa-solid fa-caret-down"></i>
                </li>

                <li id="expandInfo"> 
                    <p>How to use</p>
                    <i id="expandIcn" class="fa-sharp fa-solid fa-caret-down"></i>
                </li>

            </ul>

        </div>

    </div>

    
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>