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
	mail_to($myServerEmailAddress, $email, "Change your Password", "<a href='". "http://localhost:8080/lampsoftware/lottery/changepassword.php?v=". $verifier ."'>Click here to change your password</a>");
	print '<h3>An email has been sent to your email address.</h3>';
} else {
	echo ('no existe');
}


?>