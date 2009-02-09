<?php

define("DB_HOST", "localhost");
//define("CONN_PORT", 3306, TRUE);
define("DB_USER", "root");
define("DB_PASS", "ncc1701");
define("DB_NAME", "mainegate");
define("MAX_LOGIN",3);
define("EMAILLOGERRORS","remix@adinet.com.uy");
            
 // Where the errors are going to be sent;
 $myErrorsToEmailAddress = "rodrigod@b4before.com";
 
 // The e-mail FROM adress whcih appear in to the e-mail messages sent to you; Sometimes that e-mail need to exists within the server or else no e-mail is going to be snet; It deppend on the server config
 $myServerEmailAddress = "rodrigoelmc@aol.com";

// SMTP info which is used to send e-mails
//$smtpinfo["debug"] = true;
$smtpinfo["host"] = "smtp.aol.com";
$smtpinfo["port"] = "587";
$smtpinfo["auth"] = "plain";
$smtpinfo["username"] = "rodrigoelmc";
$smtpinfo["password"] = "ncc1701"
 
 //$smtpinfo["debug"] = true;
//$smtpinfo["host"] = "mail.ezcommunicator.com";
//$smtpinfo["port"] = "25";
//$smtpinfo["auth"] = true;
//$smtpinfo["username"] = "development_messenger@ezcommunicator.com";
//$smtpinfo["password"] = "development_messenger"
 

?>