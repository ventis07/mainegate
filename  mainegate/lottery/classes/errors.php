<?php
require_once 'settings/settings.php';
include 'functions/global.php';
class Error {

	// Properties
    public $UserId = "";
	public $Date = "";
    public $IPAddress = "";
    public $Email = "";
    public $Browser ="";
    

   function SaveError($ip,$email,$browser){
        SqlConnect();
        $numbererrors = mysql_query("SELECT emailaddress FROM login_errors WHERE emailaddress='$email' AND logged is null ");
        if (mysql_num_rows($numbererrors) < MAX_LOGIN) {
        mysql_query("insert into login_errors (date,ipaddress,emailaddress,browser) values (now(),'$ip','$email','$browser')");           
        }
        else {
        mysql_query("insert into login_errors (date,ipaddress,emailaddress,browser) values ('$date','$ip','$email','$browser')");
        global $myErrorsToEmailAddress, $myServerEmailAddress;
        mail_to ($myServerEmailAddress, $myErrorsToEmailAddress, '3 errors logged', 'the email address '.$email.' has tried to login '.mysql_num_rows($numbererrors).' times');
        //$a=mail(EMAILLOGERRORS,'3 errors logged ', 'the email address '.$email.' has tried to login '.mysql_num_rows($numbererrors).' times');
        mysql_query("UPDATE login_errors SET logged=1 WHERE emailaddress = '$email'");
        }
        mysql_close();
    }
    function GetError($email) {
    }
    function purgelog(){
    }
 }
  ?>