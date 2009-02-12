<?

include 'functions/global.php';
include 'classes/lottocls.php';

SqlConnect();

$exp = $_POST['id'];
//$exp = str_replace('\\\\', '\\' ,$exp);

$lotto = new class_lotto();
$lotto->reRunGames($_POST['id']);
//echo $exp;
?>