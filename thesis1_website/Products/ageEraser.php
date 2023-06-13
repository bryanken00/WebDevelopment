<?php 
    include('../includesPHP/database.php');
    if(session_status() == PHP_SESSION_NONE)
        session_start();
        $prodName_ = $_GET['prod'];
        $prodVolume_ = $_GET['vol'];
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

    <div class="productDescriptionCon">

    <!-- <div class='itemImage'>
        <img class='ageEsaserImg' id='productImg' src='resources/$prodImg_'>
    </div>
    <div class='itemDesciption'> -->

            <?php 
            
            $sql = "SELECT * FROM tblproducts WHERE prodName = '$prodName_' AND prodVolume = '$prodVolume_'";
            // echo $sql;
            $result = $conn->query($sql);
        
            if ($result->num_rows > 0) {
                if ($row = $result->fetch_assoc()) {
                    $prodImg_ = $row['prodImg'];
                    $prodPrice_ = $row['prodPrice'];
                    $prodVolume_ = $row['prodVolume'];
                    $prodCategory_ = $row['prodCategory'];
                    $prodDescription_ = $row['Description'];
                    $prodIngredients_ = $row['Ingredients'];
                    $prodHowtouse_ = $row['Howtouse'];

                    echo "
                    <div class='itemImage'>
                        <img class='ageEsaserImg' id='productImg' src='resources/$prodImg_'>
                    </div>
                    <div class='itemDesciption'>
                        <div class='itemDes'>
                            <p class='itemName'>$prodName_</p>
                            <p class='itemPrice'>₱$prodPrice_</p>
                        </div>

                        <p class='pstock' id='productStock'>Stock: </p>
                        <button class='addTcart'>Add to Cart</button>

                        <ul class='prodDesCat'>
                            <li id='Description'>
                                <p class='desTitle'>Description</p>
                                <p class='desInfo'>The best ingredients in nature are blended in this unique anti-ageing black beauty soap. You now have the power to renew your skin and make younger, whiter and fresher. With micro beads that gently exfoliate and remove dead skin cells.</p>                                '
                            </li>
            
                            <li id='Ingredients'>
                                <p class='desTitle'>Ingredients</p>
                                <p class='inInfo'>Saponified oils of palm, coconut, soybean and castor, aqua, sodium lactate, activated charcoal, bearberry extract (w/ allantoin & alpha arbutin), glycerin, moringga extract, fragrance oil, colorant and cocomonoethanolamide.</p>
                            </li>
            
                            <li id='HowToUse'> 
                                <p class='desTitle'>How to use</p>
                                <p class='HowInfo'>For Face: Lather on hands until foamy and massage onto face. Rinse well. </p>
                            </li>
            
                        </ul>
        
                    </div>";
                }
            } else {
                homepage();
            }
            
            ?>

            <!-- <div class="itemDes">

                <p class="itemName">Age Eraser Soap</p>

                <p class="itemPrice">₱100</p>

            </div> -->

            <!-- <button class="addCart">Add to Cart</button> -->
            <!-- <button class="#">Add to Cart</button>

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

        </div> -->

    </div>

    
    

    <?php include('../includesPHP/footer.php')?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/AJax.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>