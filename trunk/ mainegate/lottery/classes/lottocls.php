<?php

//*******************************************************
//*******************************************************
//
//  Author Remus Mihalache
//
//
//  RAC WORK
//
//  Find me at electronice_delphi@yahoo.com
//
//*******************************************************
//*******************************************************


class class_lotto {

	// Properties
    public $GrabContent = "";
	public $HtmlFilter = "";
    public $FilterResult = array();
    public $FilterResult_Date = "";
    public $FilterResult_Numbers ="";
    public $CurrentSQL = "";
    public $dbGames = array();
    public $CurrentGame = array();
    
    public $PointerName = "";
    public $DayOfTheWeek= "";
    public $TimeEvent ="";
    public $isError = FALSE;
    public $ErrorMessages = array ();
    public $stateid = "";
    
    //*********
    // Constructor
   function __construct($params = NULL) 
	{

		date_default_timezone_set('Europe/London');  //0 GMT
		$this->DayOfTheWeek = date('w');
		
		$this->SetTimeEvent ();
		
		$this->Load_Games ();
		$this->SetGamesFilter ();
	   
	}
        
   
    //*********
    //********
    function ParseGames ()    
	{
		if (count ($this->dbGames) > 0)
			{
				foreach ($this->dbGames as $key => $array)
					{
					  $this->isError = FALSE;
					  if (!$this->isError) $this->SetUpCurrentGame($array['id']);                            
					  
					  if (!$this->isError)$this->grabPage();
					  if (!$this->isError)$this->data_organise();
					  if (!$this->isError)$this->applyFilter();
					  if (!$this->isError)$this->FilterResultsOrganise();


					  if (!$this->isError)$this->StoreToDB();
					  
					  $this->EchoGameResult ();
					}
			}
	}
		
	function reRunGames($gamesid)
	{
		$this->re_load_game($gamesid);
		$this->ParseGames();
	}
		
	function testRegularExpression($gameid, $regexp)
	{
		$result = "algo hace parece";
		$this->load_game($gameid);
		if (count ($this->dbGames) > 0)
		{
			foreach ($this->dbGames as $key => $array)
			{
				  $this->isError = FALSE;
				  if (!$this->isError) $this->SetUpCurrentGame($array['id']);                            
				  $this->CurrentGame['regular_expression'] = $regexp ;
				  if (!$this->isError)$this->grabPage();
				  
				  if (!$this->isError)$this->data_organise();
				  
				  if (!$this->isError)$this->applyFilter();
				  
				  if (!$this->isError)$this->FilterResultsOrganiseTest();
				  


				  //if (!$this->isError)$this->StoreToDB();
				  
				  $this->EchoGameResultTest ();
			}
		}
		return $result;
	}
	
	 //*********
   function EchoGameResultTest ()
    {
	 if (!$this->isError)
		{
			 echo "<br /><b>Game Name:</b> " . $this->CurrentGame['game_name'] . " - ID ". $this->CurrentGame['id'] ."<br />"; 
			 echo "<b>URL:</b> " . $this->CurrentGame['url'] . "<br />"; 
			 echo $this->FilterResult_Date . " " . $this->FilterResult_Numbers;
			 echo "<br><br>";
		}
		else 
			{
				echo "<br />There was an error parsing the data for Game Name:" . $this->CurrentGame['game_name'] . "- ID ". $this->CurrentGame['id'] ."<br />Skip"; 
				 echo "<hr />";  
			}
	 
	 flush ();
    }
   
    
    //*********
   function EchoGameResult ()
    {
         
         if (!$this->isError)
            {
                 echo "<br />Game Name:" . $this->CurrentGame['game_name'] . "- ID ". $this->CurrentGame['id'] ."<br />"; 
                 echo $this->FilterResult_Date . " " . $this->FilterResult_Numbers;
                 echo "<hr />";
            }
            else 
                {
                    echo "<br />There was an error parsing the data for Game Name:" . $this->CurrentGame['game_name'] . "- ID ". $this->CurrentGame['id'] ."<br />Skip"; 
                     echo "<hr />";  
                }
         
         flush ();
    }
   
    //*********
    // Set-up the Parse URL 
   function StoreToDB ()
    {

         
         $myLastDate =  $this->GetLastRecordDate ($this->CurrentGame['id']);
         if ($myLastDate != $this->FilterResult_Date)
            { 
                $this->CurrentSQL   =  "INSERT INTO `".DB_TABLES_GAMES_PLAYED."` (`id`,`state_id`,`date`, `number`) VALUES ('". $this->CurrentGame['id']  ."','". $this->CurrentGame['state_id']  ."','". $this->FilterResult_Date  ."', '". $this->FilterResult_Numbers  ."')";
                                $my_db_query  =   mysql_query($this->CurrentSQL) or $this->error_toDB();
                echo "<br /> Stored witin DB at " . DB_TABLES_GAMES_PLAYED . "_id";
            }
         
         else 
            {
                $this->error_toDB("Already exists");
                echo "<br /> Already exists";
            }
         
    }
    
    
    //*********
    //*******
    function GetLastRecordDate ($id)
	{
		
		$this->CurrentSQL   =  "SELECT * FROM ". DB_TABLES_GAMES_PLAYED ." WHERE `id`= ".$id." ORDER BY `time` desc LIMIT 1";
		$my_db_query  =   mysql_query($this->CurrentSQL) or $this->error_toDB();
		$myLastDate = "";
		if (mysql_num_rows($my_db_query) > 0) {$row  = mysql_fetch_assoc($my_db_query); $myLastDate = $row['date'];}
		
		return ($myLastDate);
		
	
	}
   
    //*********
   // 
   function SetUpCurrentGame ($myGameID)
    {

          $this->CurrentSQL   =   "SELECT *  FROM `" . DB_TABLES_GAMES_INFO . "`inner join ".DB_NAME.".rtblgame using (`id`) WHERE `id` = '" . $myGameID . "' limit 1";
          $my_db_query  =   mysql_query($this->CurrentSQL) or $this->error_toDB('',TRUE);
    
          if (mysql_num_rows($my_db_query) > 0)
                {
                    $db_items = mysql_fetch_assoc($my_db_query);
                    foreach ($db_items as $key => $value)
                        {
                            $this->CurrentGame[$key] = $value;
                        }
                    
                }
    
    }
   

     //*********
     // Apply Filter for the  htmnl content    
    function applyFilter ()
	{
	   preg_match ($this->CurrentGame['regular_expression'] , $this->GrabContent, $this->FilterResult);
	}
        
     
     //*********   
    //**********
    function FilterResultsOrganise ()
        {
            if (count ($this->FilterResult) > 0)
                {
                    // no need for this element
                    unset ($this->FilterResult[0]);

                    foreach ($this->FilterResult as $key => $value)
                    {
                             $this->FilterResult[$key] = trim ($value);
                    }
                   	if(isset($this->FilterResult['date']))
					{
						$this->FilterResult['date'] = str_replace('-','/',$this->FilterResult['date']);
						$this->FilterResult_Date = date('m/d/Y', strtotime($this->FilterResult['date']));
						unset ($this->FilterResult['date']);
						unset ($this->FilterResult[count($this->FilterResult)]);
					}
					else
					{
						$this->FilterResult[1] = str_replace('-','/',$this->FilterResult[1]);
						$this->FilterResult_Date = date('m/d/Y', strtotime ($this->FilterResult[1]));
						unset ($this->FilterResult[1]);
                    }

                    $myNumber = "";
                    foreach  ($this->FilterResult as $key => $value)
                    {

                            if (strlen($value)==1) {$value = "0".$value;}

                            if (strlen($myNumber)>0) {$myNumber .=  NUMBERS_COMMA . $value;}
                                            else {$myNumber .=  "$value";}
                    }

                   $this->FilterResult_Numbers = $myNumber;
                   unset ($this->FilterResult);

                }
            else
                {
                    $this->error_toDB ("No matches, the page had been changed or the patern fail");
                }
        }
		
		
		function FilterResultsOrganiseTest ()
        {
			
            if (count ($this->FilterResult) > 0)
			{
				// no need for this element
				unset ($this->FilterResult[0]);
				
				foreach ($this->FilterResult as $key => $value)
					{
						 $this->FilterResult[$key] = trim ($value);
					}
					
				$this->FilterResult_Date = date('m/d/Y', strtotime ($this->FilterResult[1]));
				unset ($this->FilterResult[1]);
				
				$myNumber = "";
				foreach  ($this->FilterResult as $key => $value)
					{
						
						if (strlen($value)==1) {$value = "0".$value;}
						
						if (strlen($myNumber)>0) {$myNumber .=  NUMBERS_COMMA . $value;}
										else {$myNumber .=  "$value";}
					}

			   $this->FilterResult_Numbers = $myNumber;
			   unset ($this->FilterResult);

			}
            else
			{
				echo ("No matches, the page had been changed or the patern fail");                
			}
        }
        
        
         

     //*********
    // Get the Parse URL html content
    function grabPage()
    
        {
          
                          $useragent = $_SERVER['HTTP_HOST'];
                          if (empty ($useragent)) {$useragent = 'localhost';}

                          global $ch;
                          $cookie = 'cookie.txt';
                          $ch = curl_init();

                          
                          curl_setopt($ch, CURLOPT_URL, $this->CurrentGame['url']); //sets url
                          curl_setopt($ch, CURLOPT_USERAGENT, "$useragent");
                          curl_setopt($ch, CURLOPT_FAILONERROR, TRUE); //even if there is error it will return string
                          curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); //return page as string
                          curl_setopt($ch, CURLOPT_HEADER, 0); //header
                          curl_setopt($ch, CURLOPT_COOKIEFILE, "$cookie");
                          curl_setopt($ch, CURLOPT_COOKIEJAR, "$cookie");
                          curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
                          curl_setopt($ch, CURLOPT_TIMEOUT, 85);
                          $this->GrabContent=curl_exec($ch); //executes curl
                          $err     = curl_errno( $ch );
                          $errmsg  = curl_error( $ch );
                          $header  = curl_getinfo( $ch );
                          curl_close($ch); //closes the connection
                          
                          if ($err != 0 || $header['http_code'] !=200)
                            {
                                echo "<br />Error parsing the game URL"; 
                                $this->error_toDB($this->CurrentGame['url']. " " .$errmsg);
                            }

         }
         
    
    //****************  
    //*************   replace new lines and spaces betwen the html tags
    function data_organise ()
    {

        $this->GrabContent = ereg_replace( "\n", "", $this->GrabContent);
        $this->GrabContent = preg_replace('/>\s+</m', '><', $this->GrabContent);
        
    }
    
    
    //****   Games id and occurance load
    //**** 
    function load_games ()
        {
            $this->CurrentSQL   =   "SELECT `id`, `time`, `occurance` FROM `" . DB_TABLES_GAMES_INFO . "`";
            $my_db_query  =   mysql_query($this->CurrentSQL) or $this->error_toDB('',TRUE);
            
            if (mysql_num_rows($my_db_query) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($my_db_query)) 
                    {
                        
                        $this->dbGames[]  = array ( 
                                                        'id' => $db_items['id'], 
                                                        'time' => $db_items['time'],
                                                        'occurance' => $db_items['occurance']
                                                   );
                        
                    
                    }                                           
                    
                    
                }
        }
    
	//****   Games id and occurance load
    //**** 
    function load_game($id)
        {
            $this->CurrentSQL   =   "SELECT `id`, `time`, `occurance` FROM `" . DB_TABLES_GAMES_INFO . "` where id = '$id'";
            $my_db_query  =   mysql_query($this->CurrentSQL) or $this->error_toDB('',TRUE);
            
            if (mysql_num_rows($my_db_query) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($my_db_query)) 
                    {
                        
                        $this->dbGames[]  = array ( 
                                                        'id' => $db_items['id'], 
                                                        'time' => $db_items['time'],
                                                        'occurance' => $db_items['occurance']
                                                   );
                        
                    
                    }                                           
                    
                    
                }
        }
    
	function re_load_game($id)
        {
            $this->CurrentSQL   =   "SELECT `id`, `time`, `occurance` FROM `" . DB_TABLES_GAMES_INFO . "` where id in ($id)";
            $my_db_query  =   mysql_query($this->CurrentSQL) or $this->error_toDB('',TRUE);
            
            if (mysql_num_rows($my_db_query) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($my_db_query)) 
                    {
                        $this->dbGames[]  = array ( 
                                                        'id' => $db_items['id'], 
                                                        'time' => $db_items['time'],
                                                        'occurance' => $db_items['occurance']
                                                   );
                        
                    
                    }                                           
                    
                    
                }
        }
    
    //****   Exclude the games which aren't need to parse for the crrent day'
    //**** 
    function SetGamesFilter ()
        {
            
            $occurance_array = array ();
            
            foreach  ($this->dbGames  as $key => $array)
            
                    {
                        $found = FALSE; 
                        $this->GrabURL = "dsfsdfsdfsd";
                        $occurance_array = str_split ($array['occurance']);
                         
                         if (count($occurance_array) > 0)
                            foreach ($occurance_array as $dayno)
                                {
                                    if ($dayno == $this->DayOfTheWeek) $found = TRUE;
                                }
                         
                         if ($found) 
                            {
                                $myHour =  $array['time'][0].$array['time'][1];
                                if ($this->GetEventTimeToString($myHour) != $this->TimeEvent)
                                        {
                                            $found  =   FALSE;
                                        }
                            }
                         
                         if (!$found) {
                             unset ($this->dbGames["$key"]);
                         }
                    }

                      
        }
     
     
    //****   Set the time, even or day
    //**** 
    function SetTimeEvent ()
        {
            if (!empty($_REQUEST['time']))
            {
                if (!is_numeric($_REQUEST['time'])) {$this->TimeEvent = $_REQUEST['time'];}
                                           else {
                                                    $myHour = $_REQUEST['time'][0].$_REQUEST['time'][1];
                                                    $this->TimeEvent = $this->GetEventTimeToString($myHour);
                                                }
        
            }
        }
     
     
     
    //****  
    //**** 
    function GetEventTimeToString ($myHour)
        {
        
          if ($myHour <= 14) {$TimeEvent = "day";}
          if ($myHour >  14) {$TimeEvent = "eve";}  
        
         return ($TimeEvent);
        }
        
    
    //****   Send Error to DB
    //**** 
    function error_toDB ($myReason="", $myApplicationStop = FALSE)
        {
            if ($myApplicationStop === TRUE) $this->PointerName = $this->PointerName. ' APPLICATION STOPED';
           $myReason .= " " . mysql_error();
           
           $this->SetPointerName ();
           $this->SetStateId();
           $this->isError = TRUE;
           
            echo ($this->stateid);
           $query   =   "INSERT INTO `errors` (`state_id`,`game_id`,`game_name` , `reason` , `query`) VALUES ('".$this->stateid."','".$this->CurrentGame['id']."','".$this->PointerName."', '".$this->sql_quote($myReason)."', '". $this->sql_quote($this->CurrentSQL) . "')";
           $my_db_query  =   mysql_query($query) or die("Query Error: " . mysql_error() );
           if ($myApplicationStop === TRUE) {die ("Error executing " . $this->CurrentSQL);}
           $this->ErrorMessages[] =  $this->PointerName . ", " . $this->sql_quote($myReason) . ', ' . $this->sql_quote($this->CurrentSQL);
            
        }
    
    
    
    //**
    //******
    function SetPointerName ()
        {
        
            if (!empty($this->CurrentGame['game_name'])) {$this->PointerName = $this->CurrentGame['game_name']; }
                                            else            {$this->PointerName = 'main application - load games';}
        
        }
     function SetStateId ()
        {

            if (!empty($this->CurrentGame['state_id'])) {$this->stateid = $this->CurrentGame['state_id']; }
                                            else            {$this->stateid = 'main application - load games';}

        }
        
        
    //****
    //****    
    function sql_quote( $value ) 
        { 
            if( get_magic_quotes_gpc() ) 
                        { 
                              $value = stripslashes( $value ); 
                        } 

            if( function_exists( "mysql_real_escape_string" ) ) 
                        { 
                              $value = mysql_real_escape_string( $value ); 
                        } 
                    else 
                        { 
                              $value = addslashes( $value ); 
                        } 
                
            return $value; 
        }    
     
// End class
}
?>
