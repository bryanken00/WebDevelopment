<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';
require '../PHPMailer/src/Exception.php';

try{ 
  $from  = "verification@kissedbynature.online"; 
  $namefrom = "Kissed By Nature";
  $mail = new PHPMailer();
  $mail->SMTPDebug = 0;
  $mail->CharSet = 'UTF-8';
  $mail->isSMTP();
  $mail->SMTPAuth   = true;
  $mail->Host   = "smtp.privateemail.com";
  $mail->Port       = 587;
  $mail->Username   = $from;
  $mail->Password   = "KENKENken0011@";
  $mail->SMTPSecure = "tsl";
  $mail->setFrom($from,$namefrom);
  $mail->addCC($from,$namefrom);
  $mail->Subject  = 'Verification';
  $mail->isHTML();
  $mail->Body = 'test';
  $mail->addAddress('bryanken01230@gmail.com');
  return $mail->send();
}catch(exception $e){
  echo "$e";
}

?>
