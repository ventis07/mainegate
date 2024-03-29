<?php
include "functions/global.php";
require_once 'functions/check-user.php';
require_once 'classes/user.php';
?>
<html>
<head>
<link href="js/jscalendar/calendar-win2k-cold-1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jscalendar/calendar.js"></script>
<script type="text/javascript" src="js/jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="js/jscalendar/calendar-setup.js"></script>
<script src="./js/scriptaculous/prototype.js" type="text/javascript"></script>
<script src="./js/scriptaculous/effects.js" type="text/javascript"></script>
<script src="./js/scriptaculous/dragdrop.js" type="text/javascript"></script>
<script src="./js/scriptaculous/controls.js" type="text/javascript"></script>
<script type="text/javascript">

	var game_id = 0;
	var game_stateid = 0;
	var spots = 0;

	function validate()
	{
		var myDate=new Date();
		var x = document.getElementById("data");
		var year = x.value.split("-")[0];
		var month = x.value.split("-")[1] - 1;
		var day = x.value.split("-")[2];
		
		//myDate.setFullYear(year,month,day);
		myDate.setFullYear(year);
		myDate.setDate(day);
		myDate.setMonth(month);
		
		if(month.length<2)
			month = "0" + month;
			
		if (myDate > new Date())
		{
			alert("date cannot be grater than today");
			return false;
		}
		
		var x = document.body.getElementsByTagName("input");
		for (var i=0; i<x.length; i++)
		{
			current = x[i];
			if (current.type== "text") {
				if (current.value == "")
				{
					alert("Cannot insert empty fields");
					current.focus();
					return false;
				}
			}
		}
		
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
		game_id = x.options[x.selectedIndex].value.split(",")[0];
		game_stateid = x.options[x.selectedIndex].value.split(",")[4];
        x=x.options[x.selectedIndex].value.split(",")[1];
		
		spots = x;
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
	 var month = z.getMonth()+1;
	 
	if(month.toString().length <2)
	{
		month = "0" + month;
	}
     
	 var zz = z.getFullYear()+"-"+month+"-"+z.getDate();
	 
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
	  if(document.getElementById(x).value.length<2 && document.getElementById(x).value != "")
	  {
		document.getElementById(x).value = "0" + document.getElementById(x).value;
		return true;
	  }
	  return false;
   }
   
   function checkDate(d)
   {
		dateformat2 = d.split("-")[1] + "/" + d.split("-")[2] + "/" + d.split("-")[0];
		/*alert(dateformat2);
		
		alert(game_id);
		alert(game_stateid);
		alert(spots);*/
		// **************** TRAER LOS NUMEROS CON AJAX *********************
		new Ajax.Request('./_getnumbers.php',
	                        {asynchronous:true, parameters:'id=' + game_id + '&state_id=' + game_stateid + '&d1=' + d + '&d2=' + dateformat2,
	                         onSuccess: function(t)
							{
								if (t.responseText != "" && t.responseText.length == spots*2)
								{
									//alert("viene bien");
								}
							}});
   }

</script>
</head>
<body>

<?php
if (isset($_SESSION['user']) && ($admin==2)) {
 
SqlConnect();

?>
  <form id="playgame" method="post" action="processgame.php">
   <SELECT name="state[]" id="state" ONCHANGE="displayspots(this)">
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
  <input type="text" id="data" name="data" readonly onChange="checkDate(this.value)" />
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
