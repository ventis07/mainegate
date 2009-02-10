<?php


require_once 'classes/errors.php';
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();

$email = $_POST['email'];
$user = new User;

$user = $user->GetUser($email);

if ($user != null) {
	echo ('existe');
} else {
	echo ('no existe');
}


?>