<?php

require_once 'classes/errors.php';
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();

$verifier = $_GET['v'];
$valid = false;

if ($verifier != "")
{
	$user = new User();
	$user = $user->GetUserByValidationCode($verifier);
	if ($user != null)
	{
		$valid = true;
		?>
			<form method="POST" action='changepassword.php?v=<?echo $verifier?>'>
			Email: <? echo($user->Email) ?><br />
			Secret Question 1: <? echo($user->Question_one) ?><br />
			Secret Answer 1: <input type='text' name='answer1' /><br />
			<input type='submit' value='send' />
			</form>
		<?php
	}
}
if ($valid)
{}
else
{
	?>
		<h1>Validation code is not valid!!!!<h1>
	<?php
}
	



?>