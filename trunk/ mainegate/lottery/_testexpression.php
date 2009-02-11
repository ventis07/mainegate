<?

include 'functions/global.php';

SqlConnect();

$exp = $_POST['txtexpression'];
$exp = str_replace('\\\\', '\\' ,$exp);





?>
