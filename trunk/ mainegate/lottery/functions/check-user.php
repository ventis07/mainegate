<?php

//admin =1,2 ADMIN,SUPERADMIN
//auth= 1,2 : ADMIN,USER


require_once 'classes/user.php';
session_start();
//var_dump($_SESSION['user']);
if (isset($_SESSION['user'])) {   // Checking To See If SESSIONs Exist And If They're Good
$user = $_SESSION['user'];
    if ($user->AccessLevel == 1) {
      $admin = '1';   // User Is An Admin, Set $admin To 1
      $auth = '1';
    } else if ($user->AccessLevel == 2) {
    $admin = '0';   // User Not An Admin, Set $admin To 0
    $auth = '1';
    }
    else if ($user->AccessLevel == 3){
    $admin = '2';
    $auth = '1';
    }
    else if ($user->AccessLevel == 4){
    $admin = '0';
    $auth = '2';
    }
  else {
    $admin = '0';   // Invalid User, Set $admin To 0
    $auth = '0';   // Invalid User, Set $auth To 0
    }
}
?>