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

    <img class="fphoto" src="resources/KBN Products.jpg">

    <form method="post" class="cusInfo">

        <p class="applicationTitle">Registration</p>

        <div class="grind1">
            <label class="applicationlbl">Name:</label>
            <input class="regFormLastName" placeholder="Last Name" name="regFormLastName" required>
            <input class="regFormFirstName" placeholder="First Name" name="regFormFirstName" required>
            <input class="regFormMI" placeholder="MI" name="regFormMI">

        </div>

        <div class="grind1">
            <label class="applicationlbl">Contacts:</label>
            <input class="regFormContact" placeholder="Contact No." name="regFormContact" type='number' required>
            <input class="regFormEmail" placeholder="Email" name="regFormEmail" required>

        </div>

        <div class="grind1">
            <label class="applicationlbl">Address:</label>
            
            <div class="add">
                <select class='regFormRegion' id="regionSelect" required>
                    <option value="Default">Region</option>
                </select>

                <select class='regFormProvince' id="provinceSelect" required>
                    <option value="Default">Province</option>
                </select>

                <select class='regFormCity' id="citySelect" required>
                    <option value="Default">City</option>
                </select>

                <select class='regFormBarangay' id="barangaySelect" required>
                    <option value="Default">Barangay</option>
                </select>
            </div>
                <input class="address2" placeholder="Street Name, Building, House No." required>
                <input class="zipc" placeholder="Zip Code" type="Number" required>
        </div>

        <div class="grind1">
            <label class="applicationlbl">Product Description</label>
            <input class="prodes" placeholder="Product Description" required>
        </div>

        <br>
        
        <button class="appbtn" onclick="passingData()">Submit</button>
            
    </form>

    <br><br>

    <?php include('../includesPHP/footer.php')?>
    <script src="../javascript/regionAPI.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>