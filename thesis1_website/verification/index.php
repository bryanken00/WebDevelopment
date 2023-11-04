<?php
    if(session_status() === PHP_SESSION_NONE)
        session_start();

include('../includesPHP/database.php');

if(!isset($_SESSION['emailAddress']) || !isset($_GET['hax'])){
    header("Location: ../homepage");
    exit();
}

function generateVerificationCode() {
    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'; // You can use other characters as well
    $code = '';

    for ($i = 0; $i < 4; $i++) {
        $randomIndex = rand(0, strlen($characters) - 1);
        $code .= $characters[$randomIndex];
    }

    return $code;
}


$verificationCode = generateVerificationCode(); // Generate the code and assign it to a variable
$firstDigit = $verificationCode[0];
$secondDigit = $verificationCode[1];
$thirdDigit = $verificationCode[2];
$fourthDigit = $verificationCode[3];
$emailAdd = $_SESSION['emailAddress'];



$procedureN = "CALL " . $emailAdd . "();";

function decryptText($encryptedText, $key) {
    $method = 'aes-256-cbc';
    $encryptedText = base64_decode($encryptedText);
    $iv = substr($encryptedText, 0, openssl_cipher_iv_length($method));
    $decrypted = openssl_decrypt(substr($encryptedText, openssl_cipher_iv_length($method)), $method, $key, 0, $iv);
    return $decrypted;
}

$key = 'kbnthesis';
$emailAddress = '';
if(isset($_SESSION['EmailAddressPreReg']))
    $emailAddress = $_SESSION['EmailAddressPreReg'];

$emailResult = "";
$html = "<!DOCTYPE html>

<html>

<head>

    <title>email</title>
    <link rel='icon' href='../icon/icon.png' type='image/x-icon'>
    
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>

    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css' integrity='sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==' crossorigin='anonymous' referrerpolicy='no-referrer' />

    <link rel='stylesheet' href='https://kissbynature.shop/css/style.css'>

</head>

<body>

<div class='message-email-container'>
    <div class='email-message-con'>
        <p class='email-txt'>Dear Mr/Ms,</p>
        <p class='email-txt'>Welcome to KBN Skin Essentials! To ensure the security of your account, please verify your email address by entering the following verification code:</p>
        <div class='email-input-fields'>
            <p class='email-txt-vlbl'>Verification Code:</p>
            <input class='email-input' name='code1' placeholder='' type='tel' maxlength='1' value='$firstDigit'>
            <input class='email-input' name='code2' placeholder='' type='tel' maxlength='1' value='$secondDigit'>
            <input class='email-input' name='code3' placeholder='' type='tel' maxlength='1' value='$thirdDigit'>
            <input class='email-input' name='code4' placeholder='' type='tel' maxlength='1' value='$fourthDigit'>
        </div>
        <p class='email-txt'>Please enter this code on our website or app to complete the verification process. If you didn't request this verification, please ignore this email.</p>
        <p class='email-txt'>Thank you for choosing KBN Skin Essentials. If you have any questions or need assistance, please don't hesitate to contact our support team at [Support Email Address]</p>
        <p class='email-txt'>Best regards,</p>
        <p class='email-txt'>Kissed by Nature</p>
    </div>
</div>
    
</body>

</html>
";

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';
require '../PHPMailer/src/Exception.php';

$mail = new PHPMailer(true);

try {
    // Server settings
    $mail->SMTPDebug = SMTP::DEBUG_OFF; // Disable verbose debug output
    $mail->isSMTP();
    $mail->Host = 'server1.kissedbynature.online'; // Use your hosting provider's SMTP server
    $mail->SMTPAuth = true;
    $mail->Username = 'verify@kissedbynature.online'; // Use your email address
    $mail->Password = 'KENKENken0011@'; // Use your email password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; // Use SSL encryption
    $mail->Port = 465; // Use the SSL port (465 for SMTPS)

    // Recipients
    $mail->setFrom('verify@kissedbynature.online', 'Kissed By Nature');
    $mail->addAddress($emailAddress);

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Verification Code';
    $mail->Body = $html;

    // Avoiding spam complaints
    $mail->AddCustomHeader('List-Unsubscribe: <mailto:unsubscribe@example.com>');

    $result = $mail->send();
    global $emailResult;
    if ($result) {
    } else
        $emailResult =  '<p style="color: red;">Email not sent. Please refresh the page</p>';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Email Verification</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
    <form class="form" action='<?php echo $_SERVER['PHP_SELF']; ?>' method="POST" onsubmit="return validateForm()">
        <span class="close-form">X</span>
        <div class="info">
            <span class="title">E-Mail Verification</span>
            <?php
                echo $emailResult;
            ?>
            <p class="description">You must enter the verification code we sent to your email.</p>
        </div>
        <div class="input-fields">
        <input name='code1' placeholder="" type="tel" maxlength="1" oninput="moveToNextInput(this, 'code2')">
        <input name='code2' placeholder="" type="tel" maxlength="1" oninput="moveToNextInput(this, 'code3')">
        <input name='code3' placeholder="" type="tel" maxlength="1" oninput="moveToNextInput(this, 'code4')">
        <input name='code4' placeholder="" type="tel" maxlength="1">
        </div>

        <div class="action-btns">
            <input type='submit' class="verify" value='Verify'>
        </div>

    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/returnProduct.js"></script>
    <script>
        function validateForm() {
            var enteredCode = document.getElementsByName("code1")[0].value +
                            document.getElementsByName("code2")[0].value +
                            document.getElementsByName("code3")[0].value +
                            document.getElementsByName("code4")[0].value;
            
            if (enteredCode !== '<?php echo $verificationCode; ?>') {
                alert("Verification code is incorrect.");
                return false; // Prevent form submission
            }

            return true; // Allow form submission
        }
        function moveToNextInput(input, nextInputName) {
        var value = input.value;
        if (value.length === 1) {
            var nextInput = document.getElementsByName(nextInputName)[0];
            if (nextInput) {
                nextInput.focus();
            }
        }
    }
    </script>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the verification codes from the form
    $code1 = $_POST["code1"];
    $code2 = $_POST["code2"];
    $code3 = $_POST["code3"];
    $code4 = $_POST["code4"];

    $stmt = $conn->prepare($procedureN);
    $success = $stmt->execute();
    
    if ($success) {
        $query = "DROP PROCEDURE IF EXISTS " . $emailAdd;
        if ($conn->query($query) === TRUE) {
        }
        if(isset($_SESSION['emailAddress'])) {
            unset($_SESSION['emailAddress']); // Unset the session variable
        }
        echo "<script>window.location.href = 'homepage/';</script>";
    } else {
        header('Location: ../application/');
    }
}

?>
</body>
</html>