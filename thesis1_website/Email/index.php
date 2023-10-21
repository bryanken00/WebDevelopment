<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

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
    $mail->Body = file_get_contents('emailTemplate.html');
    
    // $mail->send();
    echo 'NAKA OFF';
} catch (Exception $e) { // undefined PHPMailer Exception
    echo 'Email sending failed: ' . $mail->ErrorInfo;
}

?>
