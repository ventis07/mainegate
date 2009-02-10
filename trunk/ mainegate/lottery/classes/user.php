<?php
class User {

	// Properties
    public $FirstName = "";
	public $LastName = "";
    public $Password = "";
    public $Email = "";
    public $Username ="";
    public $AccessLevel = 0;
    
    //*********
    // Constructor
   function NewUser($firstname,$lastname,$email,$username,$password,$access){
        $my_db_query = mysql_query("SELECT * from tbl_users WHERE email='$email'");
        if (mysql_num_rows($my_db_query) > 0)
        {
            echo("The email you are trying to add already exists");
            return false;
        }
        Else{
            $enc = md5($password);
            mysql_query("insert into tbl_users (first_name,last_name,email,username,password,access_level) values ('$firstname','$lastname','$email','$username','$enc','$access')") or die("Query Error: " . mysql_error() );
            return true;
        }
    }
	
	 // Constructor
   function NewUser2($firstname,$lastname,$email,$username,$password,$access,$q1, $a1, $q2, $a2){
        $my_db_query = mysql_query("SELECT * from tbl_users WHERE email='$email'");
        if (mysql_num_rows($my_db_query) > 0)
        {
            echo("The email you are trying to add already exists");
            return false;
        }
        Else{
            $enc = md5($password);
			$ans1 = md5($a1);
			$ans2 = md5($a2);
            mysql_query("insert into tbl_users (first_name,last_name,email,username,password,access_level,question1, question2, answer1, answer2) values ('$firstname','$lastname','$email','$username','$enc','$access','$q1','$q2','$ans1','$ans2')") or die("Query Error: " . mysql_error() );
            return true;
        }
    }
	
    function GetUser($email) {
        $my_db_query = mysql_query("SELECT * from tbl_users WHERE email='$email'");    
            if (mysql_num_rows($my_db_query) > 0)
                {
                 $db_items = mysql_fetch_assoc($my_db_query);
                 $this->FirstName = $db_items['first_name'];
                 $this->LastName = $db_items['last_name'];
                 $this->Password = $db_items['password'];
                 $this->Email = $db_items['email'];
                 $this->Username = $db_items['username'];
                 $this->AccessLevel = $db_items['access_level'];
                }
			else
			{
				return null;
			}
    
    return $this;
    }
	
	function insertPasswordVerifier()
	{
		$verifier = md5(date('U'));
		$mail = $this->Email;
		mysql_query("update tbl_users set verifier = '$verifier' where email = '$mail'") or die("Query Error: " . mysql_error() );
		
		return ($verifier);
	}
	
    function AuthenticateUser($email,$pass){
        $usercheck2 = mysql_query("SELECT * FROM tbl_users WHERE email='$email' AND password='$pass'");
        $usercheck = mysql_num_rows($usercheck2);
        if ($usercheck > '0') {   // If One Or More Users Were Found
        $this->GetUser($email);
        return true;
        }
        else {
        return false;
        }
    }
    public function check_email_address($strEmailAddress) {
            
            // If magic quotes is "on", email addresses with quote marks will
            // fail validation because of added escape characters. Uncommenting
            // the next three lines will allow for this issue.
            //if (get_magic_quotes_gpc()) { 
            //    $strEmailAddress = stripslashes($strEmailAddress); 
            //}

            // Control characters are not allowed
            if (preg_match('/[\x00-\x1F\x7F-\xFF]/', $strEmailAddress)) {
                return false;
            }

            // Split it into sections using last instance of "@"
            $intAtSymbol = strrpos($strEmailAddress, '@');
            if ($intAtSymbol === false) {
                // No "@" symbol in email.
                return false;
            }
            $arrEmailAddress[0] = substr($strEmailAddress, 0, $intAtSymbol);
            $arrEmailAddress[1] = substr($strEmailAddress, $intAtSymbol + 1);

            // Count the "@" symbols. Only one is allowed, except where 
            // contained in quote marks in the local part. Quickest way to
            // check this is to remove anything in quotes.
            $arrTempAddress[0] = preg_replace('/"[^"]+"/'
                                             ,''
                                             ,$arrEmailAddress[0]);
            $arrTempAddress[1] = $arrEmailAddress[1];
            $strTempAddress = $arrTempAddress[0] . $arrTempAddress[1];
            // Then check - should be no "@" symbols.
            if (strrpos($strTempAddress, '@') !== false) {
                // "@" symbol found
                return false;
            }

            // Check local portion
            if (!$this->check_local_portion($arrEmailAddress[0])) {
                return false;
            }

            // Check domain portion
            if (!$this->check_domain_portion($arrEmailAddress[1])) {
                return false;
            }

            // If we're still here, all checks above passed. Email is valid.
            return true;

        }

        /**
         * Checks email section before "@" symbol for validity
         * @param   strLocalPortion     Text to be checked
         * @return  True if local portion is valid, false if not
         */
  protected function check_local_portion($strLocalPortion) {
            // Local portion can only be from 1 to 64 characters, inclusive.
            // Please note that servers are encouraged to accept longer local
            // parts than 64 characters.
            if (!$this->check_text_length($strLocalPortion, 1, 64)) {
                return false;
            }
            // Local portion must be:
            // 1) a dot-atom (strings separated by periods)
            // 2) a quoted string
            // 3) an obsolete format string (combination of the above)
            $arrLocalPortion = explode('.', $strLocalPortion);
            for ($i = 0, $max = sizeof($arrLocalPortion); $i < $max; $i++) {
                 if (!preg_match('.^('
                                .    '([A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]' 
                                .    '[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]{0,63})'
                                .'|'
                                .    '("[^\\\"]{0,62}")'
                                .')$.'
                                ,$arrLocalPortion[$i])) {
                    return false;
                }
            }
            return true;
        }

        /**
         * Checks email section after "@" symbol for validity
         * @param   strDomainPortion     Text to be checked
         * @return  True if domain portion is valid, false if not
         */
        protected function check_domain_portion($strDomainPortion) {
            // Total domain can only be from 1 to 255 characters, inclusive
            if (!$this->check_text_length($strDomainPortion, 1, 255)) {
                return false;
            }
            // Check if domain is IP, possibly enclosed in square brackets.
            if (preg_match('/^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])'
               .'(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}$/'
               ,$strDomainPortion) || 
                preg_match('/^\[(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])'
               .'(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])){3}\]$/'
               ,$strDomainPortion)) {
                return true;
            } else {
                $arrDomainPortion = explode('.', $strDomainPortion);
                if (sizeof($arrDomainPortion) < 2) {
                    return false; // Not enough parts to domain
                }
                for ($i = 0, $max = sizeof($arrDomainPortion); $i < $max; $i++) {
                    // Each portion must be between 1 and 63 characters, inclusive
                    if (!$this->check_text_length($arrDomainPortion[$i], 1, 63)) {
                        return false;
                    }
                    if (!preg_match('/^(([A-Za-z0-9][A-Za-z0-9-]{0,61}[A-Za-z0-9])|'
                       .'([A-Za-z0-9]+))$/', $arrDomainPortion[$i])) {
                        return false;
                    }
                }
            }
            return true;
 }

        /**
         * Check given text length is between defined bounds
         * @param   strText     Text to be checked
         * @param   intMinimum  Minimum acceptable length
         * @param   intMaximum  Maximum acceptable length
         * @return  True if string is within bounds (inclusive), false if not
         */
        protected function check_text_length($strText, $intMinimum, $intMaximum) {
            // Minimum and maximum are both inclusive
            $intTextLength = strlen($strText);
            if (($intTextLength < $intMinimum) || ($intTextLength > $intMaximum)) {
                return false;
            } else {
                return true;
            }
        }
}
        ?>