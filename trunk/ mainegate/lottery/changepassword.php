<?php

require_once 'classes/errors.php';
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();

$user = new User();
$verifier = $_GET['v'];

$valid = false;
$allowchange = false;

$ans1 = $_POST['answer1'];
$ans2 = $_POST['answer2'];

if (isset($_POST['newpass'])) {
	$user->changePassword($verifier, $_POST['newpass']);
	header("Location: login.php");
}

if ($verifier != "")
{
	$user = $user->GetUserByValidationCode($verifier);
	if ($user != null) {
		$valid = true;
	
		if (isset($_POST['answer1'])) {
			if ($user->checkSecurityQuestionOne($verifier, $ans1)) {
				$allowchange = true;
			}
			else {
				//echo ('sec 1 is not valid');
			}
		}
		if (!$allowchange && isset($_POST['answer2'])) {
			if ($user->checkSecurityQuestionTwo($verifier, $ans2)) {
				$allowchange = true;
			}
			else {
				//echo ('sec 2 is not valid');
			}
		}
	}
}
if ($valid && !$allowchange)
{
		?>
			<form method="POST" action='changepassword.php?v=<?echo $verifier?>'>
			<?php
			if (!isset($_POST['answer1']) && !isset($_POST['answer2'])) {
			?>
			Email: <? echo($user->Email) ?><br /><br />
			Secret Question 1: <? echo($user->Question_one) ?><br /><br />
			Secret Answer 1: <input type='text' name='answer1' /><br /><br />			
			<input type='submit' value='send' />
			<?php
			}
			if (isset($_POST['answer1']) && !isset($_POST['answer2'])) {
			?>
			Email: <? echo($user->Email) ?><br /><br />
			Secret Question 2: <? echo($user->Question_two) ?><br /><br />
			Secret Answer 2: <input type='text' name='answer2' /><br /><br />
			<input type='submit' value='send' />
			<?php
			}
			if (isset($_POST['answer2'])) {
			?>
				<h2>Both security questions are incorrect.<br>User cound not be authenticated.</h2>
			<?php
			} ?>
			</form>
		<?php
}
elseif ($valid && $allowchange) {
		?>
		<form method="POST" action='changepassword.php?v=<?echo $verifier?>'>
		Email: <? echo($user->Email) ?><br /><br />
		New Password: <input type='password' name='newpass' /><br /><br />
		<input type='submit' value='send' />
		</form>
		<?php
}
else
{
	?>
		<h1>Validation code is not valid!!!!<h1>
	<?php
}
	



?>