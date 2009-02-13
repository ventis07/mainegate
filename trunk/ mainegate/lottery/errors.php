<HTML>
<head>
	<title>Expression</title>
	<script src="./js/scriptaculous/prototype.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/effects.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/dragdrop.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/controls.js" type="text/javascript"></script>
</head>
<body>
<?php
include 'functions/global.php';

SQLConnect();

if (isset($_POST[ide])){
    $i=0;
    $substring = substr($_POST['ide'],0,-1);
    $errordata= split(",",$substring);
    print '<form id="form1" name="form1" method="post" action="errors.php">';
    print'<table>';
    foreach ($errordata as $value){

            $selectquery = mysql_query("SELECT state_id,game_id FROM errors WHERE error_id='$value'");
            $db_items = mysql_fetch_assoc($selectquery);

            print '<tr>';
            print '<td>';
            print '<label for="numbers">'.date('A').' :</label>';
            print '</td>';
            print '<td>';
            print '<input type="hidden" name="state'.$i.'" id="state'.$i.'" value="'.$db_items['state_id'].'" />';
            print '<input type="hidden" name="gameid'.$i.'" id="gameid'.$i.'" value="'.$db_items['game_id'].'" />';
            print '<input type="text" name="numbers'.$i.'" id="numbers'.$i.'" />';
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
<form name="deleteButton" method="post" action="errors.php">
<?php

if(isset($_GET['sort'])){
	$sort = $_GET['sort'];
	$errors_sql = mysql_query("SELECT e.error_id, e.errors, e.state_id, e.game_name , e.reason , e.game_id , s.state_name from
	errors e, tbl_state s where e.state_id = s.state_id order by $sort");
	$errors_count = mysql_num_rows($errors_sql);
}
else
{	
	$errors_sql = mysql_query("SELECT e.error_id, e.game_id, e.state_id, e.errors, e.game_name, e.reason, s.state_name from
	errors e, tbl_state s where e.state_id = s.state_id");
	$errors_count = mysql_num_rows($errors_sql);
}

if ($errors_count == 0)
{
echo "No errors.";
}
else
{
?>
<table id="mainTable" width="100%">

<? if (!$_POST['delete']){ ?>
<tr>
	<td width="10%" colspan="2">
		Select/Unselect All<input name="chkSelectAll" type="checkbox" id="chkSelectAll" onclick="checkUncheckAll(this);">
	</td>
</tr>
<tr>
	<td>
	</td>
	<td align="center" width="20%"><a href="errors.php?sort=2"/>
		Date
	</td >
	<td align="center"><a href="errors.php?sort=3"/>
		State
	</td>
	<td align="center"><a href="errors.php?sort=4"/>
		Game Name
	</td>
	<td align="center"><a href="errors.php?sort=5"/>
		Error Message
	</td>
</tr>
<?
}
while($errors_row = mysql_fetch_array($errors_sql))
{

define ('DTFORMAT', 'm-d-Y @ h:i:s'); 
$converteddate =  date (DTFORMAT, strtotime ($errors_row["errors"]));

?>
<? if(!$_POST['delete']){ ?>
<tr>
	<td>
		<input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $errors_row['error_id'] .",". $errors_row['game_id'] ; ?>">
	</td>
	<td>
		<?php echo $converteddate ?>
	</td>
	<td>
		<?php echo ucfirst($errors_row['state_name']) ?>
	</td>
	<td>
		<?php echo ucfirst($errors_row['game_name']) ?>
	</td>	
	<td>
		<?php echo ucfirst($errors_row['reason']) ?>
	</td>
</tr>	
    <?php } ?>
<?php
}
}

?>
<tr>
	<td width="10%" colspan="2">
		Select/Unselect All<input name="chkSelectAll" type="checkbox" id="chkSelectAll" onclick="checkUncheckAll(this);">
	<td>	
</tr>
<tr>
	<td>
	</td>	
	<td align="center" width="20%"><a href="errors.php?sort=1"/>
		Date
	</td >
	<td align="center"><a href="errors.php?sort=2"/>
		State
	</td>
	<td align="center">
		Game Name
	</td>
	<td align="center">
		Error Message
	</td>
</tr>


<?

if($_POST['delete']){
for($i = 0; $i < $errors_count; $i++){
$del_id = split(",",$_POST['checkbox'][$i],1);
$delete_sql = "DELETE FROM errors WHERE error_id='$del_id'";
$result = mysql_query($delete_sql);

$errors_sql = mysql_query("SELECT e.error_id, e.game_id, e.state_id, e.errors, e.game_name, e.reason, s.state_name from
errors e, tbl_state s where e.state_id = s.state_id");
$errors_count = mysql_num_rows($errors_sql);
}
if ($errors_count == 0)
{
echo "No errors.";
}
else
{
while($errors_row = mysql_fetch_array($errors_sql))
{

define ('DTFORMAT', 'm-d-Y @ h:i:s');
$converteddate =  date (DTFORMAT, strtotime ($errors_row["errors"]));

?>
<tr>
	<td>
		<input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $errors_row['error_id'] .",". $errors_row['game_id'] ; ?>">
	</td>
	<td>
		<?php echo $converteddate ?>
	</td>
	<td>
		<?php echo ucfirst($errors_row['state_name']) ?>
	</td>
	<td>
		<?php echo ucfirst($errors_row['game_name']) ?>
	</td>
	<td>
		<?php echo ucfirst($errors_row['reason']) ?>
	</td>
<tr>	
<?php
}
}
?>
<tr>
	<td width="10%" colspan="2">
		Select/Unselect All<input name="chkSelectAll" type="checkbox" id="chkSelectAll" onclick="checkUncheckAll(this);">
	</td>	
</tr>
<?
}
?>
<br/>
<tr>
	<td>
		<input name="delete" type="submit" id="delete" value="delete">
	</td>
	<td>
		<input name="rerun" type="button" id="rerun" value="ReRun" onclick="Rerungame(this)">
	</td>
	<td>
		<input name="rerun" type="button" id="rerun" value="Edit Number" onclick="EditNumbers(this)">
	</td>	
	<td>
		<span id="progress_indicator" style="display: none; position:absolute;">
		<img src="./resources/wait.gif" alt="Working..." /></span>
		<input type="hidden" id="ide" name="ide"/>
	</td>			
</tr>
</table>
</form>
<body>
<script type="text/javascript">
    
function checkUncheckAll(theElement)
{
	var theForm = theElement.form, z = 0;
	for(z=0; z<theForm.length;z++)
	{
		if(theForm[z].type == 'checkbox' && theForm[z].name != 'checkall')
		{
			theForm[z].checked = theElement.checked;
		}
	}
 }
    
    function Rerungame(theElement) {
		var x = "";
		var sp="";
		var theForm = theElement.form, z = 0;
		
		for(z=0; z<theForm.length;z++)
		{
			if(theForm[z].type == 'checkbox' && theForm[z].checked)
			{
				sp = theForm[z].value;
				x += sp.split(",")[1];
				x += ",";
			}
		}
		
		$('progress_indicator').style.display = '';
		new Ajax.Request('./_RerunGames.php',
	                        {asynchronous:false, parameters:'id=' + x,
	                         onSuccess: function(t)
							{
								$('progress_indicator').style.display = 'none';
								//document.getElementById('').value = t.responseText;
								alert(t.responseText);
							}});
    }
	
	function EditNumbers(theElement)
	{
		var x = "";
		var theForm = theElement.form, z = 0;
		for(z=0; z<theForm.length;z++)
		{
			if(theForm[z].type == 'checkbox' && theForm[z].checked)
			{
				sp = theForm[z].value;
				x += sp.split(",")[0];
				x += ",";
				document.getElementById('ide').value=x;
			}
		}
		document.deleteButton.submit();
	}
	
</script>
</HTML>