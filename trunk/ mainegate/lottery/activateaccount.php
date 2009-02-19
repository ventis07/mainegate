<?php

require_once 'classes/errors.php';
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();

$user = new User();
$verifier = $_GET['v'];

if ($verifier != "")
{
	$user = $user->GetUserByValidationCode($verifier);
	if ($user != null)
	{
		$user->activateAccount();
		echo "<h3>Your account has been sucessfully activated.</h3><a href='login.html'>Login</a>";
	}
	
}




?>