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


    function displayspots(x){
        var i = 0;
        y=x;
        x=x.options[x.selectedIndex].value.split(",")[1];
        if (document.getElementById("createTextbox").innerHTML == ""){
        while (i<x)
        {
            document.getElementById("createTextbox").innerHTML = document.getElementById("createTextbox").innerHTML +"<input type=text id='mytext"+ i +"' name='mytext"+ i +"' size=3 MAXLENGTH=3 onKeyUp=\"return validateInt(event,'mytext"+i+"')\"/>&nbsp;"
            i++;
        }
    }
    else {
        document.getElementById("createTextbox").innerHTML = "";
        while (i<x)
        {
            document.getElementById("createTextbox").innerHTML = document.getElementById("createTextbox").innerHTML +"<input type=text id='mytext"+ i +"' name='mytext"+ i +"' size=3 MAXLENGTH=3 onKeyUp=\"return validateInt(event,'mytext"+i+"')\"/>&nbsp;"
            i++;
        }
    }
    y=y.options[y.selectedIndex].value.split(",")[2];
    document.getElementById("data").value=y;
}
function validateInt(event,x)
   {
      var reg= /\d{3}|\d{2}|\d{1}/;
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

</script>
<body>

<?php
if (isset($_SESSION['user']) && ($admin==2)) {
 
SqlConnect();

?>
  <form id="playgame" method="post" action="processgame.php">
   <SELECT name="state[]" id="state"  ONCHANGE="displayspots(this)">
  <?php
    $selectquery = mysql_query("select gi.id,st.state_name,st.state_id,gi.game_name,gi.spots,(select max(Time) from tbl_gamesplayed where id=gi.id) as Time from game_info gi inner join rtblgame rg on gi.id= rg.id inner join tbl_state st on st.state_id=rg.state_id left join tbl_gamesplayed t on gi.id=t.id and st.state_id=t.state_id order by st.state_name");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     //echo($db_items['state_id']);
                    echo "<OPTION VALUE=\"".$db_items['id'].",".$db_items['spots'].",".$db_items['Time'].",".$db_items['state_id']."\">".$db_items['state_name']." - ".$db_items['game_name']."</OPTION>";
                 }

                }
   ?>
  </SELECT>
  <br/>
  <input type="text" id="data" name="data" />
  <button id="trigger">pick date</button>
  <input type="submit" id="play" value="Save">
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
