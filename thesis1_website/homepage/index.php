<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
include('../includesPHP/topNav.php');
unset($_SESSION['checkedCheckboxesData']);
?>

<!DOCTYPE html>

<html>

<head>

    <title>Home Page</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">

</head>

<body>

    <br>

    <div class="content-outer">

        <div class="content">

            
            <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
                <video class="videoClick" height="500px" width="1100px" controls autoplay muted>
                    <source src="resources/kbnvid.mp4" alt="vid" type="video/mp4">
                </video>

            </div>

            <div class="mySlides fade">
                <img class="imgSlide1" src="resources/KBN Rejuvenating_cover.jpg">
                <a class="fAddCart2" href="../Products/ageEraser.php?prod=Rejuvenating Set&vol=Kojic Soap, Sunblock, Night Cream, Toner">Shop Now</a>
            </div>

            <div class="mySlides fade">
                <img class="imgSlide1" src="resources/KBN Radiant Glow Set_cover.jpg">
                <a class="fAddCart3" href="../Products/ageEraser.php?prod=Radiant Glow Facial Set&vol=Gel Toner, Facial Wash, Serum, Sunblock">Shop Now</a>
            </div>

            <!-- Next and previous buttons -->
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>

            <!-- The dots/circles -->
            <div class="dots" style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>

        </div>

    </div>   

    <br><br>

        <div class="shop">
            <h1>KBN Skin Essentials Ltd. Co. Toll Manufacturer</h1>
            <p>Be confident, be fabulous, and be beautiful with KBN.</p> 
        </div>
    
    <br><br><br><br>

    <div class="conGrid">

        <p class="products">Our Products</p>

        <div class="gridCon">
            <?php
                $sql = "SELECT prodCategory FROM `tblproductcategories`";
                $result = $conn->query($sql);
                while($row = mysqli_fetch_assoc($result)){
                    $cat_ = $row['prodCategory'];
                    $sql1 = "SELECT a.prodCategory, a.prodImg, CONCAT(a.prodName, '(', a.prodVolume, ')') AS ProductName, SUM(b.Quantity) As Total
                    FROM tblproducts AS a 
                    JOIN tblordercheckoutdata AS b ON b.ProductName = a.prodName AND b.volume = a.prodVolume
                    JOIN tblproductcategories AS c ON c.prodCategory = a.prodCategory
                    WHERE c.prodCategory = '$cat_'
                    GROUP BY b.ProductName, b.volume
                    ORDER BY Total DESC LIMIT 1";
                        $result1 = $conn->query($sql1);
                        while($row1 = mysqli_fetch_assoc($result1)){
                            $cat__ = $row1['prodCategory'];
                            $prodimgPath = $row1['prodImg'];
                            $prodName = $row1['ProductName'];
                            $c = $row1['prodCategory'];
                            echo "
                                <a class='grid-item' href='../Products/?Cat=$cat__'>

                                <div class='featuredProduct-Img'>
                                        
                                    <div class='featuredProduct-imgCon'>
                                        <img class='featuredImg' src='../Products/resources/$prodimgPath'>
                                    </div>
                                </div>
                
                                <div class='featuredProduct-Info'>
                                    <p class='featuredProduct-Lbl'>$cat_</p>
                                    <p class='featuredProduct-description'>$prodName</p>
                                </div>
                                
                                </a>
                            ";
                        }
                }
            ?>
        </div>
    
    </div>

    <div class="topProduct">

        <p class="tTopPro">Shop Bestsellers</p>
        <div class="topProductGrid">
            <?php
                $sql = "SELECT prodImg, prodName, prodVolume, Description, prodPrice FROM tblproducts ORDER BY Sold DESC LIMIT 4";
                $result = $conn->query($sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    $img = $row['prodImg'];
                    $name = $row['prodName'];
                    $variant = $row['prodVolume'];
                    $Description = $row['Description'];
                    $price = $row['prodPrice'];

                    echo "<div class='topProduct-item'>";
                        echo "<div class='topProduct-Img-item'>";
                            echo "<div class='topProduct-Img-item-con'>";
                                echo "<img class='topProductImg' src='../Products/resources/$img'>";
                            echo "</div>";
                        echo "</div>";
            
                        echo "<div class='topProduct-info'>";
                            echo "<p class='topProduct-item-name'>$name</p>";
                            echo "<p class='topProduct-item-description'>$Description</p>";
                            echo "<p class='topProduct-item-price'>₱ $price</p>";
                            echo "<button class='topProduct-item-btn' data-product-name='$name' data-product-variant='$variant' onClick='addCartHomePage(this)'>Add to Cart</button>";
                        echo "</div>";
                    echo "</div>";

                }
                
                
            ?>
        </div>
        
    </div>

    

<!-- Messenger Chat plugin Code -->
<!-- <div id="fb-root"></div> -->
<!-- Your Chat plugin code -->
<!-- <div id="fb-customer-chat" class="fb-customerchat"> -->
</div>

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJAX.js"></script>
    <script src="../javascript/web.js"></script>
    <!-- <script src="../javascript/messenger.js"></script> -->

</body>

</html>
