<?php

include "functions/global.php";
SqlConnect();

if (isset($_POST[state]))
{
$formdata = split(",",$_POST[state][0]);
$i=0;
while (isset($_POST['mytext'.$i])){
    $numbers=$numbers.$_POST['mytext'.$i];
    
    $i=$i+1;
}

mysql_query("INSERT INTO tbl_gamesplayed (id,state_id,date,number,Time)
VALUES ('$formdata[0]', '$formdata[3]','$formdata[2]', '$numbers', '$_POST[data]')") or die(mysql_error());
print '<p> The data has been succesfully saved </p><a href="index.php">back to index</a>';
}



if (isset($_POST[ide])){
    $i=0;
    $substring = substr($_POST['ide'],0,-1);
    $errordata= split(",",$substring);
    print '<form id="form1" name="form1" method="post" action="processgame.php">';
    print'<table>';
    foreach ($errordata as $value){

            $selectquery = mysql_query("SELECT e.state_id,e.game_id,g.game_name,e.errors,g.url FROM errors e inner join game_info g on e.game_id=g.id WHERE error_id='$value'");
            $db_items = mysql_fetch_assoc($selectquery);

            print '<tr>';
            print '<td>';
            print '<label for="numbers">'.$db_items['game_name']."  ".$db_items['errors']." : ".'</label>';
            print '</td>';
            print '<td>';
            print '<input type="hidden" name="state'.$i.'" id="state'.$i.'" value="'.$db_items['state_id'].'" />';
            print '<input type="hidden" name="gameid'.$i.'" id="gameid'.$i.'" value="'.$db_items['game_id'].'" />';
            print '<input type="text" name="numbers'.$i.'" id="numbers'.$i.'" />';
            print '<a href="'.$db_items['url'].'/> Website Url </a>';
            print '</td>';
            print '</tr>';
            $i=$i+1;
    }
    print '</table>';
    print '<input type="submit" name="submit" id="submit" value="Submit" />';
    print '</form>';
}
if ((isset($_POST[numbers0])) && (isset($_POST[gameid0]))){

    $i=0;
    while (isset($_POST['numbers'.$i])){
        $numbers=$_POST['numbers'.$i];
        $gameid=$_POST['gameid'.$i];
        $state= $_POST['state'.$i];
        var_dump(mysql_query("INSERT INTO tbl_gamesplayed (id,state_id,date,number,Time)
    VALUES ('$gameid', '$state',now(), '$numbers', now())") or die(mysql_error()));
        $i=$i+1;
}
echo("All changes saved succesfully");
print '<a href="index.php"> back to index </a>';
}
?>