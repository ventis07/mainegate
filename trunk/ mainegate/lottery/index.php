<?php
  
require 'functions/check-user.php';
require_once 'classes/user.php';
//session_start();

 if (isset($_GET['time'])){
 
include "classes/lottocls.php";
include "settings/settings.php";
require_once('functions/functions.php');
   
  //include "include/mysql.php";
  
  error_reporting(E_ALL);
  
  
  // set the execution time lenght to infinite;
  set_time_limit(0);
  
 
  // Open connection to the database
  connect ();
  
  
  $myLottery    =   new class_lotto;
  
 
  $myLottery->ParseGames ();
  
  
  // Close connection
  disconnect ();
  
  If (count($myLottery->ErrorMessages)  > 0 ) 
    {
        
        
        $message = "";
        
        foreach ($myLottery->ErrorMessages as $value)
            {
                $message .= $value . "<br />";
            }
            
    //$a=mail($myErrorsToEmailAddress,'errors found', $message);
    send_errors ("Error parsing one or more games!", $message);
    $a=true;
        if ($a) {
            echo "an email with ".count($myLottery->ErrorMessages)." error meesages has been succesfuly sent to ".$myErrorsToEmailAddress;
        }
        else {
            echo "there was an error sending the email to ".$myErrorsToEmailAddress;
        }
    }
}
else{
if ($admin == '1') {   // If User Is An Admin
  print 'Logged in as a admin.';
  print '<br /><br />';
  print '<a href="index.php?time=eve">Run games -eve-</a>';
  print '<br /><br />';
  print '<a href="index.php?time=day">Run games -day-</a>';
  print '<br /><br />';
  print '<a href="errors.php">Check errors</a>';
  print '<br /><br />';
  print '<a href="expressions.php">Add and Try regular expressions</a>';
  print '<br /><br />';
  print '<a href="playgame.php">add numbers for a given game</a>';
  print '<br /><br />';
  print '<a href="logout.php">Logout</a>';
} else if ($admin == '2') {   // If User Is An SuperAdmin
  print 'Logged in as a Super Admin.';
  print '<br /><br />';
  print '<a href="index.php?time=eve">Run games -eve-</a>';
  print '<br /><br />';
  print '<a href="index.php?time=day">Run games -day-</a>';
  print '<br /><br />';
  print '<a href="errors.php">Check errors</a>';
  print '<br /><br />';
  print '<a href="expressions.php">Add and Try regular expressions</a>';
  print '<br /><br />';
  print '<a href="playgame.php">add numbers for a given game</a>';
  print '<br /><br />';
  print '<a href="logout.php">Logout</a>';
} else if ($auth == '1') {   // If User Is Just A Regular User (Non-Admin)
  print 'Logged in as a user.';
  print '<br /><br />';
  print '<a href="logout.php">Logout</a>';
} else if ($auth == '2') {   // If User Is Just A Regular User (Non-Admin)
  print 'Logged in as a Guest.';
  print '<br /><br />';
  print '<a href="logout.php">Logout</a>';
} else {   // If No Cookies Are Set, Cookies Are Expired, Or Cookies Contain Invalid Username And/Or Password
  print 'NOT logged in.';
  print '<br /><br />';
  print '<a href="login.html">Login</a>';
  print '<br /><br />';
  print '<a href="add.html">Add user</a>';
  print '<br /><br />';
  print '<a href="forgotpassword.html">Forgot password</a>';
} }
?>

