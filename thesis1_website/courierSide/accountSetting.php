<!DOCTYPE html>

<html>

<head>

    <title>Page Title</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>

    <?php include('../includesPHP/courierTopNav.php')?>

    <br><br><br>

    <div class="courier-account-setting">
        
        <div class="settingCat">

            <p class="setting-lbl">User Name: Ravenrose</p>

            <a class="courier-edit" onclick="courierAccSettingFunc()">
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div id="edit-pop-up-UserName">

            <a class="edit-pop-up-close" onclick="courierAccSettingFunc()">
                <i class="fa-solid fa-xmark"></i>
            </a>

            <p class="edit-pop-up-title">Edit User Name</p>
            <input type="textbox" class="edittextbox">
        </div> 

        <div class="settingCat">

            <p class="setting-lbl">Name: raven berenguila </p>

            <a class="courier-edit" onclick="courierAccSettingNameFunc()">
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div id="edit-pop-up-Name">

            <a class="edit-pop-up-close" onclick="courierAccSettingNameFunc()">
                <i class="fa-solid fa-xmark"></i>
            </a>

            <p class="edit-pop-up-title">Edit Name</p>
            <input type="textbox" class="edittextbox">
        </div>

        <div class="settingCat">

            <p class="setting-lbl">Contact Number: 02191831</p>

            <a class="courier-edit" onclick="courierAccSettingContactNoFunc()">
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div id="edit-pop-up-ContactNo">

            <a class="edit-pop-up-close" onclick="courierAccSettingContactNoFunc()">
                <i class="fa-solid fa-xmark"></i>
            </a>

            <p class="edit-pop-up-title">Edit Contact Number</p>
            <input type="textbox" class="edittextbox">
        </div>

        <div class="settingCat">

            <p class="setting-lbl">Email: rberenguila@icloud.com</p>

            <a class="courier-edit" onclick="courierAccSettingemailFunc()">
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div id="edit-pop-up-email">

            <a class="edit-pop-up-close" onclick="courierAccSettingemailFunc()">
                <i class="fa-solid fa-xmark"></i>
            </a>

            <p class="edit-pop-up-title">Edit Email</p>
            <input type="textbox" class="edittextbox">
        </div>

        <div class="settingCat">

            <p class="setting-lbl">Password</p>

            <a class="courier-edit" onclick="courierAccSettingpasswordFunc()">
                <i class="fa-solid fa-arrow-right"></i>
            </a>

        </div>

        <div id="edit-pop-up-password">

            <a class="edit-pop-up-close" onclick="courierAccSettingpasswordFunc()">
                <i class="fa-solid fa-xmark"></i>
            </a>

            <p class="edit-pop-up-title">Edit Password</p>
            <input type="textbox" class="edittextbox">
            <input type="textbox" class="edittextbox">
        </div>

    </div>

    <script src="../javascript/web.js"></script>

</body>

</html>