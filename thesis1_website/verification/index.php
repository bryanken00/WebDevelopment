<?php
    if(session_status() === PHP_SESSION_NONE)
        session_start();

include('../includesPHP/database.php');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

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
$emailAdd = $_SESSION['emailAddress'];
// $emailAdd = 'lopijom951';
echo $verificationCode;
$procedureN = "CALL " . $emailAdd . "();";
$hax = $_GET['hax'];
$key = 'kbnthesis';

function decryptText($encryptedText, $key) {
    $method = 'aes-256-cbc';
    $encryptedText = base64_decode($encryptedText);
    $iv = substr($encryptedText, 0, openssl_cipher_iv_length($method));
    $decrypted = openssl_decrypt(substr($encryptedText, openssl_cipher_iv_length($method)), $method, $key, 0, $iv);
    return $decrypted;
}

$emailAddress = decryptText($hax, $key);

$mail = new PHPMailer(true); //undefined PHPMailer

try {
    $mail->isSMTP();
    // $mail->IsHTML(true);
    $mail->Host = 'mail.privateemail.com'; // SMTP server for privateemail.com
    $mail->SMTPAuth = true;
    $mail->Username = 'no-reply@kissbynature.shop'; // Your email address
    $mail->Password = 'KENKENken0011'; // Your email password
    $mail->SMTPSecure = 'ssl'; // Use SSL encryption
    $mail->Port = 465; // Port for SSL

    $mail->setFrom('no-reply@kissbynature.shop'); // Your "From" address
    $mail->addAddress($emailAddress); // Recipient's email address
    $mail->Subject = 'Hello from no-reply@kissbynature.shop'; // Email subject
    // $mail->Body = file_get_contents('emailTemplate.html');
    $mail->Body = $verificationCode;
    
    $mail->send();
    // echo 'NAKA OFF';
} catch (Exception $e) { // undefined PHPMailer Exception
    echo 'Email sending failed: ' . $mail->ErrorInfo;
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
            <p class="description">You must enter the verification code we sent to your email.</p>
        </div>
            <div class="input-fields">
            <input name='code1' placeholder="" type="tel" maxlength="1">
            <input name='code2' placeholder="" type="tel" maxlength="1">
            <input name='code3' placeholder="" type="tel" maxlength="1">
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
            header('Location: ../homepage/');
            exit; // Terminate the script after the redirect
        }
    } else {
        header('Location: ../application/');
    }
}

?>
</body>
</html>

