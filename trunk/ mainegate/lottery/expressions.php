<?php
require_once 'functions/check-user.php';
require_once 'classes/user.php';
if (isset($_SESSION['user']) && ($admin==1 || $admin==2)) {

?>
<!-- import the calendar script -->
<html>
<head>
	<title>Expression</title>
	<script src="./js/scriptaculous/prototype.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/effects.js" type="text/javascript"></script>
	<script src="./js/scriptaculous/dragdrop.js" type="text/javascript"></script>

	<script src="./js/scriptaculous/controls.js" type="text/javascript"></script>

	<script type="text/javascript">
	
	function testExpression() {
		if (document.getElementById('txtexpression').value == '') {
			alert('Expression cannot be empty.');
			return false;
		}

		var topost;
		$(progress_indicator).style.display = '';
		topost = document.getElementById('playgame').serialize(document.getElementById('txtexpression').value);
		new Ajax.Request('./_testexpression.php',
	                        {asynchronous:false, postBody:topost,
	                         onSuccess: function(t)
							{
								$(progress_indicator).style.display = 'none';
								document.getElementById('response').innerHTML = t.responseText;
								Effect.Appear('response', { duration: 3.0 });
							}});
	}
	
	function saveExpression() {		
		var topost;
		$(progress_indicator).style.display = '';
		topost = document.getElementById('playgame').serialize(document.getElementById('txtexpression').value);
		new Ajax.Request('./_saveexpression.php',
	                        {asynchronous:false, postBody:topost,
	                         onSuccess: function(t)
							{
								$(progress_indicator).style.display = 'none';
								document.getElementById('response').innerHTML = t.responseText;
								Effect.Appear('response', { duration: 3.0 });
							}});
	}
    
    function displayExpression(x) {
		x = x.options[x.selectedIndex].value;
		$(user_list_indicator).style.display = '';
		new Ajax.Request('./_getexpression.php',
	                        {asynchronous:false, parameters:'id=' + x,
	                         onSuccess: function(t)
							{
								$(user_list_indicator).style.display = 'none';
								document.getElementById('txtexpression').value = t.responseText;
							}});
    }
</script>
</head>
<body>

<?php
require_once 'classes/errors.php';
require_once 'functions/global.php';


SqlConnect();
?>
  <form id="playgame" method="post" action="expression.php" cellpadding="0" cellspacing="0">
  <table style="width:100%">
  <tr>
  <td style="width:10%">
   Game: </td><td><select name="state[]" id="state"  onchange="displayExpression(this)">
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
  </select></td>
  <tr><td>
  
  Expression:</td><td> <textarea id="txtexpression" name="txtexpression" style="width:90%;height:100px"></textarea>&nbsp;<span id="user_list_indicator" style="display: none; position:absolute;">
		<img src="./resources/spinner.gif" alt="Working..." /></span></td>
		</tr>
		<tr><td><input type='button' value='Preview' onClick='testExpression()' style='margin-top:20px' /></td>
		<td><span id="progress_indicator" style="display: none; position:absolute;">
		<img src="./resources/wait.gif" alt="Working..." /></span></td></tr>
		<tr><td><input type='button' value='Save Expression' onClick='saveExpression()' style='margin-top:20px' /></td>
		<td></td></tr>
		
		<tr><td colspan="2"><div style="margin-top:30px;padding-5px; width:90%; border:1px solid black; display:none" id="response"></div></td></tr></table></form>
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
</html>