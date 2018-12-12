
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="generator" content="Ornelio Reiph">
    <meta name="dcterms.created" content="ma, 10 dec 2018 08:30:02 GMT">
    <meta name="description" content="Virtual Market">
    <meta name="keywords" content="">
	
	<link rel="stylesheet" href="login/css/login.css"/>
	<link rel="stylesheet" href="css/index.css"/>
	<link rel="stylesheet" href="css/navigation.css"/>
    <title>About</title>

  </head>
  
  <body style="background-color:#FD70C5;">
 
  <div class="menu">
	   <div class="menu1">
            <a href="index.php">VirtualMarket</a>
		 <a href="berichten.php">Messages</a>
         <a href="contact.php">Contact</a> 
	  </div>
	  
	  <div class="menu2">
	     <a href="terms/terms.php">Terms</a>	
         <a href="javascript:void(0);" class="icon" onclick="document.getElementById('id01').style.display='block'">My ads</a>
		 <a href="about.php">About</a>
		 <a href="login/registration.php">Register</a>
	 
	  </div>
	
 </div>

<br />
<br />
<br />
<br />


<div class="body2" style="background-color:white;">
<h1>About</h1>
<p id="text1">
   <br />
   Virtual Market is a website to post your advertisements.
   It has been developed by Ornelio Reiph. <br />
   You are free to add your advertisements here. <br />
   You can create an account through the 'Registers-Menu' to add your advertisements. <br />
   There is the possibility to place pictures or other 'files with your advertisement. <br />
   <br />
   You can contact the 'administrator' through the 'contact-menu'. <br /> <br />
   
   With kind regards, <br /><br />
   Ornelio Reiph <br />
   Your Administrator. <br />

   </p>
   <img src="../../images/kweek.jpg" width="512" height="384" alt="administrator" title="administrator" />
   
</div>

<!-- ===================================================================
================================LOGINMenu===============================
==================================================================== -->
	
<!-- =======================User Login============================== -->

<form id="id01"  class="login"  action="login/user_login.php" method="post">
      <div class="imgcontainer">
	       	   <img src="Pictures/login.jpg" width="429" height="321" alt="login" title="login" />
	  </div>
	  
	  <div class="container">
	       <label ><b>Username</b></label>
		   <input type="text" placeholder="Enter Username" name="uname" required>
		   
		   <label ><b>Password</b></label>
	       <input type="password" placeholder="Enter Password" name="psw" required>
		   
		   <button class="button_login" type="submit">Login</button>
		   
		   <label>
		       <input type="checkbox" checked="checked" name="remember">Remember
		   </label>	   
	  </div>

	  <div class="container" style="background-color:#f1f1f1">
    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
	
  </div>
</form>

  </body>
</html>