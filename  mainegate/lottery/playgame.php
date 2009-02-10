<!-- import the calendar script -->
<link href="js/jscalendar/calendar-win2k-cold-1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jscalendar/calendar.js"></script>
<script type="text/javascript" src="js/jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="js/jscalendar/calendar-setup.js"></script>
<script type="text/javascript">
    
    function displayspots(x){
    var i = 0;
    while (i<x)
    {
    createTextbox.innerHTML = createTextbox.innerHTML +"<input type=text id='number'+i name='mytext'+ i/>"
    i++;
    }
}

</script>
<body>

<?php
include "conn.php";

?>
  <form id="playgame" method="post" action="functions/processgame.php">
   <SELECT name="state[]" id="state"  ONCHANGE="displayspots(3)">
  <?php
    $selectquery = mysql_query("select gi.id,st.state_name,gi.game_name,gi.spots from game_info gi inner join rtblgame rg on gi.id= rg.id inner join tbl_state st on st.state_id=rg.state_id order by st.state_name");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     //echo($db_items['state_id']);
                    echo "<OPTION VALUE=\"".$db_items['id'].",".$db_items['spots']. "\">".$db_items['state_name']." - ".$db_items['game_name']."</OPTION>";
                 }

                }
   ?>
  </SELECT>
  <br/>
  <input type="text" id="data" name="data" />
  <button id="trigger">pick date</button>
  <input type="submit" id="play" value="play!!">
  <div id="createTextbox"></div>
  </form>
  <script type="text/javascript">
  Calendar.setup(
    {
      inputField  : "data",         // ID of the input field
      ifFormat    : "%m %d, %Y",    // the date format
      button      : "trigger"       // ID of the button
    }
  );
</script>
</body>
