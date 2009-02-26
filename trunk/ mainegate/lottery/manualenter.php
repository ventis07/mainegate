<?php
include "functions/global.php";
require_once 'functions/check-user.php';
require_once 'classes/user.php';
?>
<link href="js/jscalendar/calendar-win2k-cold-1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jscalendar/calendar.js"></script>
<script type="text/javascript" src="js/jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="js/jscalendar/calendar-setup.js"></script>
<script type="text/javascript">


	function validate()
	{
		var x = document.getElementById("state");
		if (x.options[x.selectedIndex].value == -1)
		{
			alert('Please select a game.');
			return false;
		}
		return true;
	}

    function displayspots(x){
		if (x.options[x.selectedIndex].value == -1)
		{
			document.getElementById("data").value="";
		}
        var i = 0;
        y=x;
        x=x.options[x.selectedIndex].value.split(",")[1];
        if (document.getElementById("createTextbox").innerHTML == ""){
        while (i<x)
        {
            document.getElementById("createTextbox").innerHTML = document.getElementById("createTextbox").innerHTML +"<input type=text id='mytext"+ i +"' name='mytext"+ i +"' size=2 MAXLENGTH=2 onKeyUp=\"return validateInt(event,'mytext"+i+"')\" onBlur=\"return validateLength('mytext"+i+"')\"/>&nbsp;"
            i++;
        }
    }
    else {
        document.getElementById("createTextbox").innerHTML = "";
        while (i<x)
        {
            document.getElementById("createTextbox").innerHTML = document.getElementById("createTextbox").innerHTML +"<input type=text id='mytext"+ i +"' name='mytext"+ i +"' size=2 MAXLENGTH=2 onKeyUp=\"return validateInt(event,'mytext"+i+"')\" onBlur=\"return validateLength('mytext"+i+"')\"/>&nbsp;"
            i++;
        }
    }
    y=y.options[y.selectedIndex].value.split(",")[3];
    o=new Date();
    var z = new Date();
    thisDay=o.getDay();
    previous=-1;
    p=0;

    if (y.indexOf(thisDay) != -1){
                
        }
     else{
       while ((p < y.length) && (y.charAt(p) < thisDay)){
       previous=y.charAt(p);
       //alert(previous);
       p++
       }
       if (previous == -1){
           previous=y.charAt(y.length-1);
           previous= 7-(previous-thisDay);
       }
       else {
           previous=thisDay-previous;
       }
        z.setDate(z.getDate()-previous);

     }
     //alert(z);
     var zz = z.getFullYear()+"-"+(z.getMonth()+1)+"-"+z.getDate();
    document.getElementById("data").value=zz;
}
function validateInt(event,x)
   {
      var reg= /^(\d{2}|\d{1})$/;
   if (document.getElementById(x).value !== ''){
      if (document.getElementById(x).value.match(reg)){
          //alert(document.getElementById(x).value+' is a number');
          return true;
      }
      else {
          alert(document.getElementById(x).value+ ' is not a number');
          return false;
      }
   }
   }
   
   function validateLength(x)
   {
	  if(document.getElementById(x).value.length=1 && document.getElementById(x).value != "")
	  {
		document.getElementById(x).value = "0" + document.getElementById(x).value;
		return true;
	  }
	  return false;
   }

</script>
<body>

<?php
if (isset($_SESSION['user']) && ($admin==2)) {
 
SqlConnect();

?>
  <form id="playgame" method="post" action="processgame.php">
   <SELECT name="state[]" id="state"  ONCHANGE="displayspots(this)">
   <option value="-1">Select a Game</option>
  <?php
    $selectquery = mysql_query("select gi.id,gi.occurance,st.state_name,st.state_id,gi.game_name,gi.spots,(select max(Time) from tbl_gamesplayed where id=gi.id) as Time from game_info gi inner join rtblgame rg on gi.id= rg.id inner join tbl_state st on st.state_id=rg.state_id left join tbl_gamesplayed t on gi.id=t.id and st.state_id=t.state_id order by st.state_name");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     //echo($db_items['state_id']);
                    echo "<OPTION VALUE=\"".$db_items['id'].",".$db_items['spots'].",".$db_items['Time'].",".$db_items['occurance'].",".$db_items['state_id']."\">".$db_items['state_name']." - ".$db_items['game_name']."</OPTION>";
                 }

                }
   ?>
  </SELECT>
  <br/>
  <input type="text" id="data" name="data" />
  <button id="trigger">pick date</button>
  <input type="submit" id="play" value="Save" onClick="return validate()">
  <div id="createTextbox"></div>
  </form>
  <script type="text/javascript">
  Calendar.setup(
    {
      inputField  : "data",         // ID of the input field
      ifFormat    : "%Y-%m-%d",    // the date format
      button      : "trigger"       // ID of the button
    }
  );
</script>
<? }
Else {
print 'NOT logged in or insuficcient privileges.';
  print '<br /><br />';
  print '<a href="login.html">Login</a>';
  print '<br /><br />';
  print '<a href="add.html">Add user</a>';
  print '<br /><br />';
  print '<a href="forgotpassword.html">Forgot password</a>';
}
?>
</body>
