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
 
?>
