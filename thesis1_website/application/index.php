<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="logInPage.css">

</head>

<body>

    <div class="log">
        <?php include('../includesPHP/topNav.php')?>
    </div>

    <img class="fphoto" src="resources/KBN Products.jpg">

    <div class="cusInfo">

            <p class="applicationTitle">Application</p>

            <div class="grind1">
                <label class="applicationlbl">Name:</label>
                <input class="appInp" placeholder="Last Name">
                <input class="appInp" placeholder="First Name">
                <input class="mi" placeholder="MI">

            </div>

            <div class="grind1">
                <label class="applicationlbl">Contacts:</label>
                <input class="appInp" placeholder="Contact No.">
                <input class="appInp" placeholder="Email">

            </div>

            <div class="grind1">
                <label class="applicationlbl">Address:</label>
                
                <div class="add">
                    <select id="inpadd" name="address">
                        <option value="australia">Region</option>
    
                    </select>
    
                    <select id="inpadd" name="address">
                        <option value="australia">Province</option>
    
                    </select>
    
                    <select id="inpadd" name="address">
                        <option value="australia">City</option>
    
                    </select>
    
                    <select id="inpadd" name="address">
                        <option value="australia">Barangay</option>
    
                    </select>

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
            
        
    </div>

    <br><br>

    

    <?php include('../includesPHP/footer.php')?>

    <script src="../javascript/web.js"></script>

</body>

</html>