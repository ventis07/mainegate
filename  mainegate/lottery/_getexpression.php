<?

include 'functions/global.php';

SqlConnect();

$id = $_POST['id'];
$selectquery = mysql_query("select regular_expression from game_info where id = $id");

$db_items = mysql_fetch_assoc($selectquery);
print $db_items['regular_expression'];


   ?>
