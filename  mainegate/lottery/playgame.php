<!-- import the calendar script -->
<link href="js/jscalendar/calendar-win2k-1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jscalendar/calendar.js"></script>
<script type="text/javascript" src="js/jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="js/jscalendar/calendar-setup.js"></script>
<body>

<?php
include "conn.php";

?>
  <form id="playgame" action="functions/processgame.php">
   <SELECT name="state[]" id="state">
  <?php
    $selectquery = mysql_query("select gi.id,st.state_name,gi.game_name from game_info gi inner join rtblgame rg on gi.id= rg.id inner join tbl_state st on st.state_id=rg.state_id order by st.state_name");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     //echo($db_items['state_id']);
                    echo "<OPTION VALUE=\"".$db_items['id']."\">".$db_items['state_name']." - ".$db_items['game_name']."</OPTION>";
                 }

                }
   ?>
  </SELECT>
  <br/>
  <input type="text" id="data" name="data" />
  <button id="trigger">pick date</button>
  <button id="play">Play !!!</button>
 
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
