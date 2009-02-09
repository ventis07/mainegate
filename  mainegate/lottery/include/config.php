<?php


           // Products Database connection
define("CONN_HOST", "localhost", TRUE);
//define("CONN_PORT", 3306, TRUE);
define("CONN_USER", "root", TRUE);
define("CONN_PASS", "root", TRUE);
define("CONN_DB", "northeast_lottery", TRUE);


            define("DB_TABLES_GAMES_INFO", "game_info", TRUE);
            define("DB_TABLES_GAMES_PLAYED", "tbl_gamesplayed", TRUE);
            define("NUMBERS_COMMA", "", TRUE);

            
            
             // Where the errors are going to be sent;
             $myErrorsToEmailAddress = "lowsky13@aol.com";
             
             // The e-mail FROM adress whcih appear in to the e-mail messages sent to you; Sometimes that e-mail need to exists within the server or else no e-mail is going to be snet; It deppend on the server config
             $myServerEmailAddress = "development_messenger@ezcommunicator.com";
            
            // SMTP info which is used to send e-mails
            $smtpinfo["host"] = "mail.ezcommunicator.com";
            $smtpinfo["port"] = "25";
            $smtpinfo["auth"] = true;
            $smtpinfo["username"] = "development_messenger@ezcommunicator.com";
            $smtpinfo["password"] = "development_messenger"


?>
