<?

include 'functions/global.php';
include 'classes/lottocls.php';

SqlConnect();

$exp = $_POST['txtexpression'];
$exp = str_replace('\\\\', '\\' ,$exp);

$lotto = new class_lotto();
$lotto->testRegularExpression($_POST['state'][0], $exp);



?>
