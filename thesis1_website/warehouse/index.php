<?php
    
$servername = "127.0.0.1:3306";
$username   = "root";
$password   = "KENKENken0011@";
$dbname     = "kbndatabase";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $MaterialName = isset($_GET['MN']) ? $_GET['MN'] : 0;
    $CodeName = isset($_GET['CN']) ? $_GET['CN'] : 0;
    $Supplier = isset($_GET['S']) ? $_GET['S'] : 0;
    $datetoday = date_create(date('Y-m-d'));
    $dt = $datetoday->format('Y-m-d');
    
    // Use parameterized query to prevent SQL injection
    $sqlVolumeLimit = "SELECT todayCurrentVolume FROM tblcurrentmonth WHERE MATERIAL_NAME = :MaterialName AND CODE_NAME = :CodeName AND SUPPLIER = :Supplier;";
    $stmt = $conn->prepare($sqlVolumeLimit);
    $stmt->bindParam(':MaterialName', $MaterialName);
    $stmt->bindParam(':CodeName', $CodeName);
    $stmt->bindParam(':Supplier', $Supplier);
    $stmt->execute();

    $max = 0;

    if ($stmt->rowCount() > 0) {
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $max = $row['todayCurrentVolume'];
        }
    } else {
        $max = 0;
        // echo "No results found.";
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>


<!DOCTYPE html>
<html>
<head>
    <title>KBN RELEASING PRODUCT</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Onest">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }

        .form-container h2 {
            text-align: center;
        }

        .form-container p {
            margin-bottom: 15px;
        }

        .form-container input[type="text"],
        .form-container input[type="date"],
        .form-container input[type="number"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .form-container input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>KBN RELEASING PRODUCT</h2>
        <form method="POST">
            <p>
                Material Name:
                <?php
                    echo '<input type="text" name="itemName" id="itemIDD" value="' . $MaterialName . '" readonly />';
                ?>
            </p>

            <p>
                Code Name:
                <?php
                    echo '<input type="text" name="itemCode" id="itemIDD" value="' . $CodeName . '" readonly />';
                ?>
            </p>

            <p>
                Supplier:
                <?php
                    echo '<input type="text" name="itemSupplier" id="itemIDD" value="' . $Supplier . '" readonly />';
                ?>
            </p>

            <p>
                Date of Released
                <?php
                    echo '<input type="date" name="dateToday" id="dateToday" value="' . $dt . '" />';
                ?>
            </p>

            <p>
                Released Volume
                <input type="number" name="relVolume" id="relVolume" min="0" value="0" max="<?php echo $max?>">
            </p>
            <input type="submit" name="submit" value="Submit">
        <script>

            var relVolumeInput = document.getElementById('relVolume');
            relVolumeInput.addEventListener('input', function() {
                var maxValue = parseFloat(relVolumeInput.getAttribute('max'));
                if (parseFloat(relVolumeInput.value) > maxValue) {
                    relVolumeInput.value = maxValue;
                }
            });

    </script>

</body>
</html>
    <?php

        if (isset($_POST['submit']) && isset($_POST['dateToday']) && isset($_POST['relVolume'])) {
            $MatsName = $_POST['itemName'];
            $CodeName = $_POST['itemCode'];
            $Suppl = $_POST['itemSupplier'];
            $dateNow = date('Y-m-d', strtotime($_POST['dateToday']));
            $Vol = isset($_POST['relVolume']);

            echo "<script>
                var relVolumeInput = document.getElementById('relVolume');
                relVolumeInput.style.border = '1px solid black';
                relVolumeInput.focus();
            </script>";
            if($Vol == 0 || $vol > $max){
                echo "<script>
                alert('Invalid Input');
                var relVolumeInput = document.getElementById('relVolume');
                relVolumeInput.style.border = '1px solid red';
                </script>";
                
                return;
            }

            try {
                $sql = "SELECT * FROM tblcurrentmonth WHERE MATERIAL_NAME = '" . $MaterialName . "' AND CODE_NAME = '" . $CodeName . "' AND SUPPLIER = '" . $Supplier . "' AND DATE_TODAY = '" . $dateNow . "'";
                $stmt = $conn->prepare($sql);
                $stmt->execute();

                if ($stmt->rowCount() == 0) {
                    $sql = "INSERT INTO tblcurrentmonth(MATERIAL_NAME, CODE_NAME, SUPPLIER, todayCurrentVolume, RECEIVED_VOLUME, APPEARANCE, RELEASED_VOLUME, REJECT_VOLUME, HOLD_VOLUME, PROD_RETURN, DATE_TODAY, CATEGORIES) SELECT MATERIAL_NAME, CODE_NAME, SUPPLIER, todayCurrentVolume, RECEIVED_VOLUME, APPEARANCE, RELEASED_VOLUME, REJECT_VOLUME, HOLD_VOLUME, PROD_RETURN, '" . $dateNow . "', CATEGORIES FROM tblcurrentmonth WHERE MATERIAL_NAME = '" . $MaterialName . "' AND CODE_NAME = '" . $CodeName . "' AND SUPPLIER = '" . $Supplier . "' ORDER BY DATE_TODAY DESC LIMIT 1; ";

                    $stmt = $conn->prepare($sql);
                    $stmt->execute();

                    echo "</br><center>";
                    echo $stmt->rowCount() . " new data successfully added </br>";

                    $sql = "UPDATE tblcurrentmonth SET todayCurrentVolume = todayCurrentVolume - " . $Vol . " WHERE MATERIAL_NAME = '" . $MaterialName . "' AND CODE_NAME = '" . $CodeName . "' AND SUPPLIER = '" . $Supplier . "' AND DATE_TODAY >= '" . $dateNow . "';" .
                        "UPDATE tblcurrentmonth SET RELEASED_VOLUME = RELEASED_VOLUME + " . $Vol . " WHERE MATERIAL_NAME = '" . $MaterialName . "' AND CODE_NAME = '" . $CodeName . "' AND SUPPLIER = '" . $Supplier . "' AND DATE_TODAY = '" . $dateNow . "';";

                    $stmt = $conn->prepare($sql);
                    $stmt->execute();

                    echo $stmt->rowCount() . " records UPDATED successfully </br>";

                } else {
                    $sql = "UPDATE tblcurrentmonth SET todayCurrentVolume = todayCurrentVolume - " . $Vol . " WHERE MATERIAL_NAME = '" . $MaterialName . "' AND CODE_NAME = '" . $CodeName . "' AND SUPPLIER = '" . $Supplier . "' AND DATE_TODAY >= '" . $dateNow . "';" .
                        "UPDATE tblcurrentmonth SET RELEASED_VOLUME = RELEASED_VOLUME + " . $Vol . " WHERE MATERIAL_NAME = '" . $MaterialName . "' AND CODE_NAME = '" . $CodeName . "' AND SUPPLIER = '" . $Supplier . "' AND DATE_TODAY = '" . $dateNow . "';";

                    $stmt = $conn->prepare($sql);
                    $stmt->execute();

                    echo $stmt->rowCount() . " records UPDATED successfully </br>";

                    echo "</center></br>";
                    
                    header("Location: http://localhost/webdevelopment/thesis1_website/warehouse/");
                    exit();
                }
            } catch (PDOException $e) {
                echo $sql . "<br>" . $e->getMessage();
            }
        }
    ?>
        </form>
    </div>
    
</body>
</html>
