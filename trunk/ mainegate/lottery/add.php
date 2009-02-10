

<form method="post" action="ProcessUser.php">
Fisrt Name :<br />
<input type="text" name="fname">
<br /><br />
Last Name :<br />
<input type="text" name="lname">
<br /><br />
Email address:<br />
<input type="text" name="email">
<br /><br />
Username :<br />
<input type="text" name="username">
<br /><br />
Password:<br />
<input type="password" name="password">
<br /><br />

<!--<label for="role">Access Level :</label>
  <SELECT name="role[]" id="role">
  <?php
    $selectquery = mysql_query("SELECT * FROM tbl_roles");
    if (mysql_num_rows($selectquery) > 0)
                {
                 while ($db_items = mysql_fetch_assoc($selectquery)) {
                     echo($db_items['roleid']);
                    echo "<OPTION VALUE=\"".$db_items['roleid']."\">".$db_items['name']."</OPTION>";
                 }

                }
   mysql_close();   // Closing The Connection ?>
  </SELECT><br /><br /><br />-->
  
  Security Question 1 :<br />
<input type="text" name="seq1">
<br /><br />
Answer 1:<br />
<input type="text" name="ans1">
<br /><br />
  Security Question 2 :<br />
<input type="text" name="seq2">
<br /><br />
Answer 2:<br />
<input type="text" name="ans2"><br /><br />
<input type="submit" name="login" value="Submit">
</form>
