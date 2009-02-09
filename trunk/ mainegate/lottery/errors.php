<form name="deleteButton" method="post" action="errors.php">
<?php

include 'conn.php';
$errors_sql = mysql_query("SELECT * FROM errors");
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
<? if(!$_POST['delete']){ ?>
    <input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $errors_row['error_id'] ; ?>"><?php echo $converteddate . " - " . ucfirst($errors_row['reason'])?><br/>
    <?php } ?>
<?php
}
}
if($_POST['delete']){
for($i = 0; $i < $errors_count; $i++){
$del_id = $_POST['checkbox'][$i];
$delete_sql = "DELETE FROM errors WHERE error_id='$del_id'";
$result = mysql_query($delete_sql);
}
$errors_sql = mysql_query("SELECT * FROM errors");
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
    <input name="checkbox[]" type="checkbox" id="checkbox[]" value="<?php echo $errors_row['error_id'] ; ?>"><?php echo $converteddate . " - " . ucfirst($errors_row['reason'])?><br/>
<?php
}
}

}


?>
<br/>
<input name="delete" type="submit" id="delete" value="delete">
</form>