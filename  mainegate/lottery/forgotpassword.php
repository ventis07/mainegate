<?php
function curPageURL() {
 $pageURL = 'http';
 if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
 $pageURL .= "://";
 if ($_SERVER["SERVER_PORT"] != "80") {
  $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
 } else {
  $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
 }
 return $pageURL;
}
?>

<?php

require_once 'classes/errors.php';
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();

$email = $_POST['email'];
$user = new User;

$user = $user->GetUser($email);

if ($user != null) {
	global $myErrorsToEmailAddress, $myServerEmailAddress;
	$verifier = $user->insertPasswordVerifier();
	mail_to($myServerEmailAddress, $email, "Change your Password", "<a href='".str_replace("forgotpassword.php", "changepassword.php", curPageURL())."?v=". $verifier ."'>Click here to change your password</a>");
	print '<h3>An email has been sent to your email address.</h3>';
} else {
	echo ('no existe');
}


?>