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

    <div class="registrationForm">

        <div class="innerRegistrationForm">
            
            <img class="fphoto" src="resources/KBN Products.jpg">

            <form method="post" class="cusInfo">

                <p class="applicationTitle">Registration</p>

                <div class="form-con">

                    <div class="form-item">
                        <p class="form-lbl">Last Name:<span style="color:red">*</span></p>
                        <input class="regFormLastName" placeholder="Last Name" name="regFormLastName" required>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl">First Name:<span style="color:red">*</span></p>
                        <input class="regFormFirstName" placeholder="First Name" name="regFormFirstName" required>
                    </div>
                    
                    <div class="form-item">
                        <p class="form-lbl">Middle Initial:</p>
                        <input class="regFormMI" placeholder="MI" name="regFormMI">
                    </div>

                </div>

                <div class="form-con">

                <div class="form-item">
                    <p class="form-lbl">Contact No.</p>
                    <input class="regFormContact" placeholder="Contact No." name="regFormContact" type='number' required>
                </div>

                <div class="form-item">
                    <p class="form-lbl">Email:<span style="color:red">*</span></p>
                    <input class="regFormEmail" placeholder="Email" name="regFormEmail" required>
                </div>

                </div>

                <div class="add">

                    <div class="form-item">
                        <p class="form-lbl">Region:<span style="color:red">*</span></p>
                        <select class='regFormRegion' id="regionSelect" required>
                            <option value="Default">Region</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl">Province:<span style="color:red">*</span></p>
                        <select class='regFormProvince' id="provinceSelect" required>
                            <option value="Default">Province</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl">City:<span style="color:red">*</span></p>
                        <select class='regFormCity' id="citySelect" required>
                            <option value="Default">City</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl">Barangay:<span style="color:red">*</span></p>
                        <select class='regFormBarangay' id="barangaySelect" required>
                            <option value="Default">Barangay</option>
                        </select>
                    </div>
                    
                </div>

                <div class="form-con">
                    
                <div class="form-item">
                    <p class="form-lbl">Address:<span style="color:red">*</span></p>
                    <input class="address2" placeholder="Street Name, Building, House No." required>
                </div>

                <div class="form-item">
                    <p class="form-lbl">Zip Code:</p>
                    <input class="zipc" placeholder="Zip Code" type="Number" required>
                </div>
                  
                </div>

                <div class="form-con">
                    <p class="form-lbl">Product Description:<span style="color:red">*</span></p>
                    <input class="prodes" placeholder="Product Description" required>
                </div>

                <br>
                
                <button class="appbtn" onclick="passingData()">Submit</button>
                    
            </form>

        </div>

    </div>

    
    <br><br>

    <?php include('../includesPHP/footer.php')?>
    <script src="../javascript/regionAPI.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>