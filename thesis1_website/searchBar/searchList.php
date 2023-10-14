
<?php include('../includesPHP/database.php')?>  

<div class='seach-pop-up-items'>
    <?php
        $search = $_GET['search'];
        $sql = "SELECT prodName, prodVolume, prodID FROM tblproducts WHERE prodName LIKE '%$search%'";
        $result = $conn->query($sql);
        $i = 0;
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $prodName = $row['prodName'];
                $prodVolume = $row['prodVolume'];
                echo "<p class='search-item' onclick=\"location.href='../Products/ageEraser.php?prod=$prodName&vol=$prodVolume'\">$prodName ($prodVolume)</p>";
                $i++;
            }
        }
        echo "<script>searchSize($i);</script>";
    ?>
</div>
<script src="../javascript/web.js"></script>