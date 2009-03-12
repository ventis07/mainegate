<?

include 'functions/global.php';

SqlConnect();

$id = $_POST['id'];
$stateid = $_POST['state_id'];
$date = $_POST['d1'];
$date2 = $_POST['d2'];
$selectquery = mysql_query("select * from tbl_gamesplayed where id = $id and (date = '$date' or date = '$date2') and state_id = $stateid;");

$db_items = mysql_fetch_assoc($selectquery);
print $db_items['number'];


   ?>
