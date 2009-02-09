<?php
  
  include "include/lottocls.php";
  include "include/config.php";
  require_once('include/functions.php');
    
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
require 'functions/check-user.php';   // Require check-user.php (ALWAYS Use require For Important Files Such As This
require_once 'classes/user.php';
session_start();
if ($admin == '1') {   // If User Is An Admin
  print 'Logged in as a admin.';
  print '<br /><br />';
  print '<a href="logout.php">Logout</a>';
} else if ($admin == '2') {   // If User Is An SuperAdmin
  print 'Logged in as a Super Admin.';
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
  print '<a href="login.php">Login</a>';
  print '<br /><br />';
  print '<a href="add.php">Add user</a>';
} 
?>

