<?php

define("DB_HOST", "localhost");
//define("CONN_PORT", 3306, TRUE);
define("DB_USER", "root");
define("DB_PASS", "");
define("DB_NAME", "lottery_db");
define("MAX_LOGIN",3);
define("EMAILLOGERRORS","remix@adinet.com.uy");

            define("DB_TABLES_GAMES_INFO", "game_info", TRUE);
            define("DB_TABLES_GAMES_PLAYED", "tbl_gamesplayed", TRUE);
            define("NUMBERS_COMMA", "", TRUE);
			
			
            
 // Where the errors are going to be sent;
 $myErrorsToEmailAddress = "rodrigod@b4before.com";
 //$myErrorsToEmailAddress = "lowsky13@aol.com";
 
 // The e-mail FROM adress whcih appear in to the e-mail messages sent to you; Sometimes that e-mail need to exists within the server or else no e-mail is going to be snet; It deppend on the server config
 $myServerEmailAddress = "rodrigoelmc@aol.com";

// SMTP info which is used to send e-mails
//$smtpinfo["debug"] = true;
$smtpinfo["host"] = "smtp.aol.com";
$smtpinfo["port"] = "587";
$smtpinfo["auth"] = "plain";
$smtpinfo["username"] = "rodrigoelmc";
$smtpinfo["password"] = "ncc1701"


?>