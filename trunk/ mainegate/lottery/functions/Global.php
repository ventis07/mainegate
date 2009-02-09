<?php 
require_once 'settings/settings.php';

function SqlConnect(){
  mysql_connect(DB_HOST,DB_USER,DB_PASS);   // Connecting To MySql
  mysql_select_db(DB_NAME);   // Selecting MySql Database
  return true;
}
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
?>