<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization');
?>

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

    <div class="productCon">
    <?php 
        $sql = "SELECT prodImg, prodName, prodPrice, prodVolume from tblproducts where prodCategory = 'Soap'";
        $result = $conn->query($sql);
    
        while ($row = $result->fetch_assoc()){

            $prodImg = $row['prodImg'];
            $prodName = $row['prodName'];
            $prodPrice = $row['prodPrice'];
            $prodVariant = $row['prodVolume'];

            echo "<div class='gridProduct'>";
                echo "<div class='productImgCon' onclick='location.href='../soapProducts/ageEraser.php''>";
                    echo "<img class='prodImg' id='productImg' src='resources/$prodImg' alt='prodImg.png'>";
                echo "</div>";

                echo "<p class='productLbl' id='productLabel'>$prodName</p>";
                echo "<p class='weight' id='productWeight'>$prodVariant</p>";
                echo "<p class='price' id='productPrice'>₱$prodPrice</p>";
                echo "<button class='addCart'>Add to Cart</button>";
            echo "</div>";
        }
    ?>
    </div>
    
    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>