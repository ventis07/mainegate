<!-- import the calendar script -->
<html>
<head>
	<title>Expression</title>
	<script src="./js/scriptaculous/prototype.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/effects.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/dragdrop.js" type="text/javascript"></script>

	<script src="./js/scriptaculous/controls.js" type="text/javascript"></script>

	<script type="text/javascript">
    
    function displayspots(x) {
		x = x.options[x.selectedIndex].value;
		$(user_list_indicator).style.display = '';
		new Ajax.Request('./ajax/_getexpression.php',
	                        {asynchronous:false, parameters:'id=' + x,
	                         onSuccess: function(t)
							{
								$(user_list_indicator).style.display = 'none';
								document.getElementById('txtexpession').value = t.responseText;
							}});
    }
</script>
</head>
<body>

<?php
require_once 'classes/errors.php';
require_once 'functions/global.php';
require_once 'classes/user.php';

SqlConnect();
?>
  <form id="playgame" method="post" action="expression.php">
   Game: <SELECT name="state[]" id="state"  onchange="displayspots(this)">
  <?php
    $selectquery = mysql_query("select gi.id,st.state_name,gi.game_name,gi.spots from game_info gi inner join rtblgame rg on gi.id= rg.id inner join tbl_state st on st.state_id=rg.state_id order by st.state_name");
	echo "<OPTION VALUE='0'>Select a game</OPTION>";
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
  <br />
  Expression: <input type="text" id="txtexpession" name="txtexpession" style="width:400px"></input><span id="user_list_indicator" style="display: none; position:absolute;">
									<img src="./resources/spinner.gif" alt="Working..." /></span>
  </form>
</body>
</html>