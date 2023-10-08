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

    <div class="content">
        
        <!-- Full-width images with number and caption text -->
        <div class="mySlides fade">
            <video class="videoClick" height="560px" width="1300px" controls autoplay muted>
                <source src="resources/kbnvid.mp4" alt="vid" type="video/mp4">
            </video>

        </div>

        <div class="mySlides fade">
            <img class="imgSlide1" src="resources/KBN Rejuvenating_cover.jpg">
            <button class="fAddCart2">Shop Now</button>
        </div>

        <div class="mySlides fade">
            <img class="imgSlide1" src="resources/KBN Radiant Glow Set_cover.jpg">
            <button class="fAddCart3">Shop Now</button>
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

    

    <br><br>

        <div class="shop">
            <h1>KBN Skin Essentials Ltd. Co. Toll Manufacturer</h1>
            <p>The best skin of your life starts here...</p> 
        </div>
    
    <br><br><br><br>

    <div class="conGrid">

        <div class="conGrid-inner">
            
            <p class="products">Our Products</p>

            <div class="gridCon">

                <a class="grid-item" href="../Products/?Cat=Soap">

                    <div class="featuredProduct-Img">
                        
                        <div class="featuredProduct-imgCon">
                            <img class="featuredImg" src="../Products/resources/fllotion.png">
                        </div>
                    </div>

                    <div class="featuredProduct-Info">
                        <p class="featuredProduct-Lbl">Soap</p>
                        <p class="featuredProduct-description">description</p>
                    </div>
                
                </a>

                <a class="grid-item" href="../Products/?Cat=Lotion">

                    <div class="featuredProduct-Img">
                        <div class="featuredProduct-imgCon">
                            <img class="featuredImg" src="../Products/resources/fllotion.png">
                        </div>
                    </div>

                    <div class="featuredProduct-Info">
                        <p class="featuredProduct-Lbl">Lotion</p>
                        <p class="featuredProduct-description">description</p>
                    </div>
                    
                </a>

                <a class="grid-item" href="../Products/?Cat=Rejunenating">

                    <div class="featuredProduct-Img">
                        <div class="featuredProduct-imgCon">
                            <img class="featuredImg" src="../Products/resources/fllotion.png">
                        </div>
                    </div>

                    <div class="featuredProduct-Info">
                        <p class="featuredProduct-Lbl">Rejuvenating Set</p>
                        <p class="featuredProduct-description">description</p>
                    </div>
                    
                </a>

                <a class="grid-item" href="../Products/?Cat=Glass Skin" >

                    <div class="featuredProduct-Img">
                        <div class="featuredProduct-imgCon">
                            <img class="featuredImg" src="../Products/resources/fllotion.png">
                        </div>
                    </div>

                    <div class="featuredProduct-Info">
                        <p class="featuredProduct-Lbl">Glass Skin Set</p>
                        <p class="featuredProduct-description">description</p>
                    </div>
                    
                </a>

                <a class="grid-item"href="../Products/?Cat=Alcohol">

                    <div class="featuredProduct-Img">
                        <div class="featuredProduct-imgCon">
                            <img class="featuredImg" src="../Products/resources/fllotion.png">
                        </div>
                    </div>

                    <div class="featuredProduct-Info">
                        <p class="featuredProduct-Lbl">Alcohol</p>
                        <p class="featuredProduct-description">description</p>
                    </div>
                    
                </a>

            </div>
        </div>

        
    
    </div>

    <div class="topProduct">

        <div class="conGrid-inner">

            <p class="tTopPro">Shop Bestsellers</p>
            <div class="topProductGrid">
                <?php
                    $sql = "SELECT prodImg, prodName, Description, prodPrice FROM tblproducts ORDER BY Sold DESC LIMIT 4";
                    $result = $conn->query($sql);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $img = $row['prodImg'];
                        $name = $row['prodName'];
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
                                echo "<button class='topProduct-item-btn'>Add to Cart</button>";
                            echo "</div>";
                        echo "</div>";
                    }
                
                
                ?>
            </div>
            
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
