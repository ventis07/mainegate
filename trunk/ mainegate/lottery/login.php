<?php

require_once 'classes/errors.php';
require_once 'classes/user.php';
require_once 'functions/global.php';

if (!isset($_GET['subpage'])) {   // If No Subpage Is Specified
  if (isset($_GET['error']) && $_GET['error'] == '1') {   // If An Error Is Set And Is Set To 1
  ?>
<font color="#FF0000"><b>ERROR: </b>Invalid email address and/or password. Please try again.</font>
  <? 
  }
    if (isset($_GET['error']) && $_GET['error'] == '2') {   // If An Error Is Set And Is Set To 1
  ?>
<font color="#FF0000"><b>ERROR: </b>Invalid email address format</font>
  <? 
  }
  ?>
<form method="post" action="login.php?subpage=login">
Email address:<br />
<input type="text" name="username">
<br /><br />
Password:<br />
<input type="password" name="password">
<br /><br />
<input type="submit" name="login" value="Login">
</form>
<?
} else if (isset($_GET['subpage']) && $_GET['subpage'] == 'login') {   // If A Subpage Is Specified And Set To login
  
  
  session_start();
  SqlConnect();
 
  $email = $_POST['username'];   // Setting The Variable (Always User Different Variable Names Than What Is In Your HTML Forms)
  $algo = 'sha512';
	$key = $_POST['password'];
	$pass = hash($algo, $key); // Setting The Variable (Always User Different Variable Names Than What Is In Your HTML Forms - Password Should Also Always Be MD5 Encrypted)
  $user = new User;
  if ($user->check_email_address($email)){
  
  if ($user->Authenticateuser($email,$pass)) {
    $_SESSION['user']=$user;
    header("Location: index.php");   // Redirect To index.php
    }
  else {
   $error = new Error;
   $error->SaveError($_SERVER['REMOTE_ADDR'],$_POST['username'],$_SERVER['HTTP_USER_AGENT']);
    ?>
<font color="#FF0000"><b>ERROR: </b>Invalid email address and/or password. Please try again.</font>
  <?//header("Location: login.php?error=1");   // Redirect Back To The Login Form With An Error
  }
  
 }
 else{ ?> <font color="#FF0000"><b>ERROR: </b>Invalid email address format</font> <?
	}//header("Location: login.php");}
}
?>