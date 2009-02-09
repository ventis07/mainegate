<?php

require_once 'settings/settings.php';

//BEGIN DB Connection
//******************************************************************
function connect() {
    global $conn;
    $conn = mysql_connect(DB_HOST, DB_USER, DB_PASS) or die("Unable to connect to MySQL");
    mysql_select_db('lottery_db', $conn) or die ("Unable to find database<br>");

 }
//connect();
//******************************************************************
//END DB Connection


//BEGIN DB dis-connection
//******************************************************************
function disconnect () {
    global $conn;
    mysql_close($conn);
    }
//******************************************************************
//END DB dis-connection


//****************
//*************
function mail_to ($from , $to, $subject, $message, $attachment=""){

include('pearmail/Mail.php');
include('pearmail/Mail/mime.php');
require_once('class.html2text.inc');

$html = $message;

$h2t =& new html2text($message);
$text =  $h2t->get_text(); 

$file = $attachment;
$crlf = "";
$hdrs = array('From' => $from, 'To' => $to,'Subject' => $subject);

$mime = new Mail_mime();
$mime->setTXTBody($text);
$mime->setHTMLBody($html);

if (!empty($attachment)) $mime->addAttachment($file,'application/octet-stream');

$body = $mime->get();
$hdrs = $mime->headers($hdrs);

global $smtpinfo;
                                
$mail =& Mail::factory("smtp", $smtpinfo);
$mail->send($to, $hdrs, $body);

}


//****************
//****************
function send_errors ($subject,$message) 
{

    $message = "One or more errors occour <br />" . $message;
    
    global $myErrorsToEmailAddress, $myServerEmailAddress;
    
    $mail_body = "$message"; //mail body 

    mail_to ($myServerEmailAddress, $myErrorsToEmailAddress, $subject, $mail_body);

}

?>