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

$currentdate = date('Y-m-d h:m:s');


mysql_query("INSERT INTO tbl_gamesplayed (id,state_id,date,number,Time)
VALUES ('$formdata[0]', '$formdata[4]','$_POST[data]', '$numbers', '$currentdate')") or die(mysql_error());

mysql_query("UPDATE game_info set last_updated = '$currentdate' where id = '$formdata[0]'") or die (mysql_error());

print '<p> The data has been succesfully saved </p><a href="index.php">back to index</a>';
}
 


if (isset($_POST[ide])){
    $i=0;
    $substring = substr($_POST['ide'],0);
    $errordata= split(",",$substring);
    print '<form id="form1" name="form1" method="post" action="processgame.php">';
    print'<table>';
    foreach ($errordata as $value){

            $selectquery = mysql_query("SELECT e.state_id,e.game_id,g.game_name,e.errors,g.url,g.spots FROM errors e inner join game_info g on e.game_id=g.id WHERE error_id='$value'");
            $db_items = mysql_fetch_assoc($selectquery);

            print '<tr>';
            print '<td>';
            print '<label for="numbers">'.$db_items['game_name']."  ".$db_items['errors']." : ".'</label>';
            print '</td>';
            print '<td>';
            print '<input type="hidden" name="state'.$i.'" id="state'.$i.'" value="'.$db_items['state_id'].'" />';
            print '<input type="hidden" name="gameid'.$i.'" id="gameid'.$i.'" value="'.$db_items['game_id'].'" />';
            print '<input type="hidden" name="numbers'.$i.'" id="numbers'.$i.'" />';
            //print '<a href="'.$db_items['url'].'"/> Website Url </a>';
			$url =  "'". $db_items['url'] ."'";
			for($j = 0; $j < $db_items['spots']; $j++)
			{
				print '<input onBlur="update('.$j.','.$db_items['game_id'].',\'numbers'.$i.'\')" type="text" id="spot'.$j.'_'.$db_items['game_id'].'" name="spot'.$j.'" style="width:20px" maxlength="2" />&nbsp;';
			}
			print '</td>';
			print '<td>';
			print '<a href="javascript:NewWindow('.$url.');"/> Website Url </a>';
            print '</td>';	
            print '</tr>';
            $i=$i+1;
    }
    print '</table>';
    print '<input type="submit" name="submit" id="submit" value="Submit" onclick="return checkBoxes()"/>';
    print '</form>';
}
if ((isset($_POST[numbers0])) && (isset($_POST[gameid0]))){
	$currentdate = date('Y-m-d');
    $i=0;
    while (isset($_POST['numbers'.$i])){
        $numbers=$_POST['numbers'.$i];
        $gameid=$_POST['gameid'.$i];
        $state= $_POST['state'.$i];
        mysql_query("INSERT INTO tbl_gamesplayed (id,state_id,date,number,Time)
		VALUES ('$gameid', '$state','$currentdate', '$numbers', now())") or die(mysql_error());
        $i=$i+1;
}
echo("All changes saved succesfully");
print '<a href="index.php"> back to index </a>';
}
?>
<script type="text/javascript">
	function NewWindow(url){
		window.open(url);
	}
	
	function update(item, id, number)
	{
		i = 0;
		document.getElementById(number).value = "";
		while (document.getElementById('spot'+i.toString()+"_"+id) != null)
		{
			document.getElementById(number).value += document.getElementById('spot'+i.toString()+"_"+id).value;
			i++;
		}
		validateLength('spot'+item.toString()+"_"+id);
	}
	
   function validateLength(x)
   {
	  if(document.getElementById(x).value.length<2 && document.getElementById(x).value != "")
	  {
		document.getElementById(x).value = "0" + document.getElementById(x).value;
		return true;
	  }
	  return false;
   }
   
   function checkBoxes()
   {
		var x = document.body.getElementsByTagName("input");
		for (var i=0; i<x.length; i++)
		{
			current = x[i];
			if (current.type== "text") {
				if (current.value == "")
				{
					alert("Cannot insert empty fields");
					current.focus();
					return false;
				}
			}
		}
   }
	
</script>