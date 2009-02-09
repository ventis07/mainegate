<?php

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = 'ncc1701';

$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die ('Error connecting to mysql');

$dbname = 'lottery_db';
mysql_select_db($dbname);
?>