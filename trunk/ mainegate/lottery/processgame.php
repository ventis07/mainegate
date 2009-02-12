<?php

include "functions/global.php";
SqlConnect();

if ($_POST)
{
$formdata = split(",",$_POST[state][0]);
$i=0;
while (isset($_POST['mytext'.$i])){
    $numbers=$numbers.$_POST['mytext'.$i];
    
    $i=$i+1;
}

mysql_query("INSERT INTO tbl_gamesplayed (id,state_id,date,number,Time)
VALUES ('$formdata[0]', '$formdata[3]','$formdata[2]', '$numbers', '$_POST[data]')") or die(mysql_error());
}
?>