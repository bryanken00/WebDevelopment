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

            <button onclick="rebrandingBtnFunc()" class="rebrandingCategory-btn">Category <i class="fa-solid fa-caret-down"></i> </button>

            <div id="rebrandingCat" class="rebrandingCategory-content">
                <?php
                
                $sql = "SELECT DISTINCT prodCategory from tblrebrandingproducts WHERE userID = '$userID'";
                $result = $conn->query($sql);
                
                echo "<a href='#' id='showAllRebranding' onclick='filterProducts(\"none\")'>All</a>";
                while ($row = $result->fetch_assoc()) {
                    echo "<a href='#' id='" . $row['prodCategory'] . "' onclick='filterProducts(\"" . $row['prodCategory'] . "\")'>" . $row['prodCategory'] . "</a>";
                }
                ?>

            </div>

        </div>

        <div class="innerRebrandingProducts">
            <?php
            if(!isset($_SESSION['userID']))
            homepage();
                $sql = "SELECT prodID, prodImg, prodName, prodVolume, prodPrice, prodCategory from tblrebrandingproducts WHERE userID = '$userID'";
                // echo $sql;
                $result = $conn->query($sql);
            
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $prodID = $row['prodID'];
                        $prodImg = $row['prodImg'];
                        $prodName = $row['prodName'];
                        $prodVariant = $row['prodVolume'];
                        $prodPrice = $row['prodPrice'];
                        $prodCategory = $row['prodCategory'];
                
                        echo "<div class='gridProduct' id='$prodCategory'>";
                            echo "<div class='productImgCon' onclick=\"location.href='../Products/ageEraser.php?prod=$prodName&vol=$prodVariant'\">";
                            echo "<img class='prodImg' id='productImg' src='resources/$prodImg' alt='prodImg.png'>";
                            echo "</div>";

                            echo "<p class='productLbl' id='productLabel'>$prodName</p>";
                            echo "<p class='weight' id='productWeight'>$prodVariant</p>";
                            echo "<p class='price' id='productPrice'>₱$prodPrice</p>";
                            echo "<button class='addCart' onclick='addToCart(\"$prodName\", \"$prodVariant\", \"$prodID\")'>Add to Cart</button>";

                        echo "</div>";
                    }
                } else {
                    homepage();
                }

            function homepage(){
                echo "<script>";
                echo "window.location.href = '../homepage/';";
                echo "</script>";
            }
        ?>
        </div>

    </div>
  
    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/rebranding.js"></script>
    <script src="../javascript/web.js"></script>
    <!-- <script src="../javascript/messenger.js"></script> -->

</body>

</html>
