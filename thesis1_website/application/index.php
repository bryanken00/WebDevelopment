<?php
if(session_status() == PHP_SESSION_NONE)
    session_start();
?>
<!DOCTYPE html>

<html>

<head>

    <title>Registration</title>
    <link rel="icon" href="../icon/icon.png" type="image/x-icon">
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
                        <input class="regFormName" name="regFormLastName" required>
                        <label class="form-lbl">Last Name <span style="color:red">*</span></label>
                    </div> 

                    <div class="form-item">
                        <input class="regFormName" name="regFormFirstName" required>
                        <label class="form-lbl">First Name <span style="color:red">*</span></label>
                    </div>
                    
                    <div class="form-item">
                        <input class="regFormName-MI" name="regFormM" required>
                        <label class="form-lbl-MI">MI: </label>
                    </div>

                </div>

                <div class="form-con">

                <div class="form-item">
                    <input class="regFormName" name="regFormContact" required>
                    <label class="form-lbl">Contact No.: <span style="color:red">*</span></label>
                </div>

                <div class="form-item">
                    <input class="regFormName" name="regFormEmail" required>
                    <label class="form-lbl">Email<span style="color:red">*</span></label>
                </div>

                </div>

                <div class="add">

                    <div class="form-item">
                        <p class="form-lbl-add">Region:<span style="color:red">*</span></p>
                        <select class='regFormRegion' id="regionSelect" required>
                            <option value="Default">Region</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl-add">Province:<span style="color:red">*</span></p>
                        <select class='regFormProvince' id="provinceSelect" required>
                            <option value="Default">Province</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl-add">City:<span style="color:red">*</span></p>
                        <select class='regFormCity' id="citySelect" required>
                            <option value="Default">City</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <p class="form-lbl-add">Barangay:<span style="color:red">*</span></p>
                        <select class='regFormBarangay' id="barangaySelect" required>
                            <option value="Default">Barangay</option>
                        </select>
                    </div>
                    
                </div>

                <br> <br> 

                <div class="form-con">
                    
                <div class="form-item">
                    <input class="address" name="address" required>
                    <label class="form-lbl-add2">Street Name, Building, House No.<span style="color:red">*</span></label>
                </div>

                <div class="form-item">
                    <input class="regFormName-MI" name ='zipC'type="Number" required>
                    <label class="form-lbl-MI">Zip Code</label>
                </div>
                  
                </div>

                <div class="form-con">
                    <input class="productDes" required>
                    <label class="productDes-lbl">Product Description<span style="color:red">*</span></label>
                </div>

                <br>
                
                <button class="appbtn" onclick="passingData(event)">Submit</button>
                    
            </form>

        </div>

    </div>

    
    <br><br>

    <?php include('../includesPHP/footer.php')?>
    <script src="../javascript/regionAPI.js"></script>
    <script src="../javascript/web.js"></script>

</body>

</html>