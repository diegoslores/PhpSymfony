<?php
session_start();

if($_SERVER["REQUEST_METHOD"] == "POST") {
	// username and password sent from form  
	if(($_POST['username'] === "prof" or $_POST['username'] === "alu" or $_POST['username'] === "secr") and $_POST['password'] === "123") {
		$_SESSION['login_user'] = $_POST['username'];
		$_SESSION["login"] = true;
		header("location: index.php");
		die;
	}	
	else {
		$error = "Your Login Name or Password is invalid";
	}
}
?>

<!-- https://www.tutorialspoint.com/php/php_mysql_login.htm -->
<html>
   
   <head>
      <title>Login Page</title>
      
      <style type = "text/css">
         body {
            font-family:Arial, Helvetica, sans-serif;
            font-size:14px;
         }
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         }
         .box {
            border:#666666 solid 1px;
         }
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "" method = "post">
                  <label>UserName  :</label><input type = "text" name = "username" class = "box"/><br /><br />
                  <label>Password  :</label><input type = "password" name = "password" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php if(isset($error)) echo $error; ?></div>
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>