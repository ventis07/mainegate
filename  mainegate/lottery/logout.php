<?php
require_once 'functions/check-user.php';
$_SESSION['user']=null;
$admin = '0';   // Invalid User, Set $admin To 0
$auth = '0';  
header("Location: index.php");   // Redirect To index.php
?>