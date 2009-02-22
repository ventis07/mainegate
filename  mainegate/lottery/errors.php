<HTML>
<head>
	<title>Errors page</title>
	<script src="./js/scriptaculous/prototype.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/effects.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/dragdrop.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/controls.js" type="text/javascript"></script>
</head>
<body>
<?php

print '<form name="deleteButton" method="post" action="errors.php">';


include 'functions/global.php';

SQLConnect();
if(isset($_GET['sort'])){
	$sort = $_GET['sort'];
	$errors_sql = mysql_query("SELECT e.error_id, e.game_id, e.state_id, e.errors, e.game_name, e.reason, s.state_name, g.url from
	errors e, tbl_state s, game_info g where e.state_id = s.state_id and g.id = e.game_id order by $sort");
	$errors_count = mysql_num_rows($errors_sql);
}
else
{	
	$errors_sql = mysql_query("SELECT e.error_id, e.game_id, e.state_id, e.errors, e.game_name, e.reason, s.state_name, g.url from
	errors e, tbl_state s, game_info g where e.state_id = s.state_id and g.id = e.game_id");
	$errors_count = mysql_num_rows($errors_sql);
}

if ($errors_count == 0)
{
echo "No errors.";
}
else
{
?>
<table>
<tr>
	<td width="10%" colspan="2">
		Select/Unselect All<input name="chkSelectAll" type="checkbox" id="chkSelectAll" onclick="checkUncheckAll(this);" value="">
	</td>
</tr>
<tr>
	<td>
		<input name="delete" type="submit" id="delete" value="Delete" onclick="Delete(this)">
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
	</td>			
</tr>	
</table>
<table id="mainTable" width="100%">

<? if (!$_POST['delete']){ ?>
<tr>
	<td>
	</td>
	<td align="center" width="20%"><a href="errors.php?sort=4 
	<?php if ($_GET['sort']=='4 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		Date
	</td >
	<td align="center"><a href="errors.php?sort=7 
	<?php if ($_GET['sort']=='7 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		State
	</td>
	<td align="center"><a href="errors.php?sort=5 
	<?php if ($_GET['sort']=='5 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		Game Name
	</td>
	<td align="center"><a href="errors.php?sort=6 
	<?php if ($_GET['sort']=='6 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		Error Message
	</td>
</tr>
<?php
}
else
{
?>
<tr>
	<td>
	</td>	
	<td align="center" width="20%"><a href="errors.php?sort=4 
	<?php if ($_GET['sort']=='4 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		Date
	</td >
	<td align="center"><a href="errors.php?sort=7 
	<?php if ($_GET['sort']=='7 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		State
	</td>
	<td align="center"><a href="errors.php?sort=5 
	<?php if ($_GET['sort']=='5 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
		Game Name
	</td>
	<td align="center"><a href="errors.php?sort=6 
	<?php if ($_GET['sort']=='6 ASC')
			print 'DESC';
		  else
			print 'ASC';?>">
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
	<td>
		 <!--<a href="<?php echo ucfirst($errors_row['url'])?>"> Go to site-->
		 <a href="javascript:NewWindow('<?php echo $errors_row['url']?>');"> Go to site
	</td>
</tr>	
    <?php } ?>
<?php
}
}
?>
<!--
<tr>
	<td width="10%" colspan="2">
		Select/Unselect All<input name="chkSelectAll" type="checkbox" id="chkSelectAll" onclick="checkUncheckAll(this);">
	<td>	
</tr>
-->
<?
if($_POST['delete']){
for($i = 0; $i < $errors_count; $i++){
	if ($_POST['checkbox'][$i]!=null){
		$del_id = split(",",$_POST['checkbox'][$i]);
		$delete_sql = "DELETE FROM errors WHERE error_id='$del_id[0]'";
		$result = mysql_query($delete_sql);
	}
}

$errors_sql = mysql_query("SELECT e.error_id, e.game_id, e.state_id, e.errors, e.game_name, e.reason, s.state_name from
		errors e, tbl_state s where e.state_id = s.state_id");
		$errors_count = mysql_num_rows($errors_sql);
		
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
	<td>
		 <!--<a href="<?php echo ucfirst($errors_row['url'])?>"> Go to site-->
		 <a href="javascript:NewWindow('<?php echo $errors_row['url']?>');"> Go to site
	</td>
<tr>	
<?php
}
}
?>

<?
}
?>
</table>
<br/>
<table>
<tr>
	<td>
		<input name="delete" type="submit" id="delete" value="Delete" onclick="Delete()">
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
<tr>
	<td width="10%" colspan="2">
		Select/Unselect All<input name="chkSelectAll" type="checkbox" id="chkSelectAll" onclick="checkUncheckAll(this);" value="">
	</td>	
</tr>
</table>

</form>
<div id="errorsdiv" style="width:100%; border:1px solid black"></div>
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
			if(theForm[z].type == 'checkbox' && theForm[z].checked && theForm[z].id != "chkSelectAll")
			{
				sp = theForm[z].value;
				x += sp.split(",")[1];
				x += ",";
			}
		}
		if(x != "")
		{
			x = x + "0";
		}
		
		$('progress_indicator').style.display = '';
		if(x!="," && x!="")
		{
			new Ajax.Request('./_RerunGames.php',
								{asynchronous:false, parameters:'id=' + x,
								 onSuccess: function(t)
								{
									$('progress_indicator').style.display = 'none';
									document.getElementById('errorsdiv').innerHTML = t.responseText;
									//alert(t.responseText);
								}});
		}
		else		
			$('progress_indicator').style.display = 'none';
    }
	
	function EditNumbers(theElement)
	{
		var x = "";
		var theForm = theElement.form, z = 0;
		for(z=0; z<theForm.length;z++)
		{
			if(theForm[z].type == 'checkbox' && theForm[z].checked  && theForm[z].id != "chkSelectAll")
			{
				if(x!="")
					x += ",";
				sp = theForm[z].value;
				x += sp.split(",")[0];
				document.getElementById('ide').value=x;
			}
		}
		if(x!="")
		{
			document.deleteButton.action = "processgame.php"
			document.deleteButton.submit();
		}
	}

	function Delete(){
		document.deleteButton.action = "errors.php";
		document.deleteButton.submit();
    }
	
	function NewWindow(url){
		window.open(url);
	}
	
</script>
</HTML>