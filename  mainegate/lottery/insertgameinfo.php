<?php
require_once 'functions/check-user.php';
require_once 'classes/user.php';
include "functions/global.php";

if (isset($_SESSION['user']) && ($admin==2)) {
SqlConnect();

if ($_POST)
{

$from = $_POST['from'];
$to =  $_POST['to'];

mysql_query("INSERT INTO game_info (game_name,time,occurance,url,spots,`from`,`to`) 
VALUES ('$_POST[game_name]', '$_POST[time]', '$_POST[occurance]','$_POST[url]', '$_POST[spots]', $from, $to)") or die(mysql_error()); 
$insertid = mysql_insert_id();
if ($_POST['state']) {
	foreach($_POST['state'] as $value){
		mysql_query("INSERT INTO rtblgame (id,state_id)
	    VALUES ('$insertid', '$value')") or die(mysql_error());
		}
	}
}
?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>

<body>

<form id="form1" name="form1" method="post" action="<?php echo $_SERVER['php_self']?>">
<table>
 <tr>
  <td>
    <label for="game_name">Game name:</label>
  </td>
  <td>
    <input type="text" name="game_name" id="game_name" />
  </td>
  </tr>
  <tr>
  <td>
    <label for="time">Time:</label>
  </td>
  <td>
    <input type="text" name="time" id="time" />
  </td>
  </tr>
<tr>
<td>
    <label for="occurance">Occurance:</label>
</td>
<td>
  <input type="text" name="occurance" id="occurance" />
</td>
<tr>
<td>
    <label for="from">From:</label>
</td>
<td>
  <input type="text" name="from" id="from" />
</td>
</tr>
  <tr>
      <td>
        <label for="to">To:</label>
      </td>
      <td>
        <input type="text" name="to" id="to" />
      <td>
  </tr>
  <tr>
      <td>
        <label for="url">URL:</label>
      </td>
      <td>
        <input type="text" name="url" id="url" />
      </td>
  </tr>
<tr>
    <td>
    <label for="spots">Spots:</label>
    </td>
    <td>
    <input type="text" name="spots" id="spots" />
    </td>
  </tr>
<tr>
<td>
<label for="state">State:</label>
</td>
<td>
  <SELECT name="state[]" id="state" MULTIPLE>
  <?php
    $selectquery = mysql_query("SELECT * FROM tbl_state");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     echo($db_items['state_id']);
                    echo "<OPTION VALUE=\"".$db_items['state_id']."\">".$db_items['state_name']."</OPTION>";
                 }

                }
   ?>
  </SELECT>
  </td>
  <tr>
    <td>
        <input type="submit" name="submit" id="submit" value="Submit" />
    </td>
  </tr>
  </table>
</form>
<? }
Else {
print 'NOT logged in or insuficcient privileges.';
  print '<br /><br />';
  print '<a href="login.html">Login</a>';
  print '<br /><br />';
  print '<a href="add.html">Add user</a>';
  print '<br /><br />';
  print '<a href="forgotpassword.html">Forgot password</a>';
}
?>
</body>
</html>