<?php
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
    $mail->setFrom('verify@kissedbynature.online', 'Your Name');
    $mail->addAddress('bryanken01230@gmail.com', 'Recipient Name');

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Your Subject Here';
    $mail->Body = 'Your message here.';

    // Avoiding spam complaints
    $mail->AddCustomHeader('List-Unsubscribe: <mailto:unsubscribe@example.com>');

    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}

?>
