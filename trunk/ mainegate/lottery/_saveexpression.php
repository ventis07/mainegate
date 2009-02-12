<?

include 'functions/global.php';
include 'classes/lottocls.php';

SqlConnect();

$exp = $_POST['txtexpression'];


// update game_info table
$gameid = $_POST['state'][0];

$my_db_query = mysql_query("update game_info set regular_expression = '$exp' where id=$gameid");

echo ("<h2>Expression sucessfully saved to db.</h2>");



?>
