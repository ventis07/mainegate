<?php 

require_once 'functions/check-user.php';   // Require check-user.php (ALWAYS Use require For Important Files Such As This 
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();
session_start();
if ($_POST){

//var_dump($_POST);
$username = $_POST['username'];
$pass = ($_POST['password']);   // Setting The Variable (Always User Different Variable Names Than What Is In Your HTML Forms - Password Should Also Always Be MD5 Encrypted)
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email = $_POST['email'];
$role = $_POST['role'];
$seq1 = $_POST['seq1'];
$ans1 = $_POST['ans1'];
$seq2 = $_POST['seq2'];
$ans2 = $_POST['ans2'];
$zip = $_POST['zip'];
$birthday = $_POST['birthday'];
$gender = $_POST['gender'];
$user = new user;
if ($user->check_email_address($email)){
	$user->zip = $zip;
	$user->dob = $birthday;
	$user->gender = $gender;
    //if ($user->NewUser2($fname,$lname,$email,$username,$pass,$role[0],$seq1,$ans1,$seq2,$ans2)){
	if ($user->NewUser2($fname,$lname,$email,$username,$pass,2,$seq1,$ans1,$seq2,$ans2)){
    mysql_close();
    header("Location: index.php");
    }
    else {
    header("Location: index.php");}
}
Echo("the email address is wrongly formatted");

}
 ?>