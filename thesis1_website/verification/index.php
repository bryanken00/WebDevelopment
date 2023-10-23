<?php
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
$emailAdd = $_GET['email'];

$mail = new PHPMailer(true); //undefined PHPMailer

try {
    $mail->isSMTP();
    $mail->IsHTML(true);
    $mail->Host = 'mail.privateemail.com'; // SMTP server for privateemail.com
    $mail->SMTPAuth = true;
    $mail->Username = 'no-reply@kissbynature.shop'; // Your email address
    $mail->Password = 'KENKENken0011@'; // Your email password
    $mail->SMTPSecure = 'ssl'; // Use SSL encryption
    $mail->Port = 465; // Port for SSL

    $mail->setFrom('no-reply@kissbynature.shop'); // Your "From" address
    $mail->addAddress('bryanken01230@gmail.com'); // Recipient's email address
    $mail->Subject = 'Hello from no-reply@kissbynature.shop'; // Email subject
    // $mail->Body = file_get_contents('emailTemplate.html');
    $mail->Body = $verificationCode;
    
    $mail->send();
    // echo 'NAKA OFF';
} catch (Exception $e) { // undefined PHPMailer Exception
    echo 'Email sending failed: ' . $mail->ErrorInfo;
}
echo $verificationCode;
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

    <form class="form">
        <span class="close-form">X</span>

        <div class="info">
            <span class="title">E-Mail Verification</span>
            <p class="description">You must enter the verification code we sent to your email.</p>
        </div>
        <div class="input-fields">
            <input placeholder="" type="tel" maxlength="1">
            <input placeholder="" type="tel" maxlength="1">
            <input placeholder="" type="tel" maxlength="1">
            <input placeholder="" type="tel" maxlength="1">
        </div>

        <div class="action-btns">
            <a class="verify" href="#">Verify</a>
            <a class="clear" href="#">Clear</a>
        </div>

    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../javascript/returnProduct.js"></script>
    
</body>
</html>