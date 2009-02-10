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
	mail_to($myServerEmailAddress, $myErrorsToEmailAddress, "your new password", "link para resetear el password");
} else {
	echo ('no existe');
}


?>