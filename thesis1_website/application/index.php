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

    <form class="cusInfo" method="POST" onSubmit="preReg(event)">

            <p class="applicationTitle">Registration</p>

            <div class="grind1">
                <label class="applicationlbl">Name:</label>
                <input class="regFormLastName" placeholder="Last Name">
                <input class="regFormFirstName" placeholder="First Name">
                <input class="regFormMI" placeholder="MI">

            </div>

            <div class="grind1">
                <label class="applicationlbl">Contacts:</label>
                <input class="regFormContact" placeholder="Contact No.">
                <input class="regFormEmail" placeholder="Email">

            </div>

            <div class="grind1">
                <label class="applicationlbl">Address:</label>
                
                <div class="add">
                    <select class='regFormRegion' id="regionSelect" name="region">
                        <option value="Default">Region</option>
                    </select>

                    <select class='regFormProvince' id="provinceSelect" name="province">
                        <option value="Default">Province</option>
                    </select>

                    <select class='regFormCity' id="citySelect" name="city">
                        <option value="Default">City</option>
                    </select>

                    <select class='regFormBarangay' id="barangaySelect" name="barangay">
                        <option value="Default">Barangay</option>
                    </select>
                </div>



                </div>
                

                <input class="address2" placeholder="Street Name, Building, House No.">

                <input class="zipc" placeholder="Zip Code">


            </div>

            <div class="grind1">
                <label class="applicationlbl">Product Description</label>
                <input class="prodes" placeholder="Product Description">
            </div>
          
              
            
            <br>
        
            <button class="appbtn">Submit</button>
            
    </form>

    <br><br>

    

    <?php include('../includesPHP/footer.php')?>
    <script src="../javascript/regionAPI.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>