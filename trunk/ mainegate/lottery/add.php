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
$user = new user;
if ($user->check_email_address($email)){
    if ($user->NewUser($fname,$lname,$email,$username,$pass,$role[0])){
    mysql_close();
    header("Location: index.php");
    }
    else {
    header("Location: index.php");}
}
Echo("the email address is wrongly formatted");

}
 ?>

<form method="post" action="add.php">
Fisrt Name :<br />
<input type="text" name="fname">
<br /><br />
Last Name :<br />
<input type="text" name="lname">
<br /><br />
Email address:<br />
<input type="text" name="email">
<br /><br />
Username :<br />
<input type="text" name="username">
<br /><br />
Password:<br />
<input type="password" name="password">
<br /><br />
<label for="role">Access Level :</label>
  <SELECT name="role[]" id="role">
  <?php
    $selectquery = mysql_query("SELECT * FROM tbl_roles");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     echo($db_items['roleid']);
                    echo "<OPTION VALUE=\"".$db_items['roleid']."\">".$db_items['name']."</OPTION>";
                 }

                }
   mysql_close();   // Closing The Connection ?>
  </SELECT>
<input type="submit" name="login" value="Submit">
</form>
