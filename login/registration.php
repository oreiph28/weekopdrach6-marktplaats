<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="generator" content="Ornelio Reiph">
    <meta name="dcterms.created" content="di, 11 dec 2018 09:10:07 GMT">
    <meta name="description" content="">
    <meta name="keywords" content="">
	<link rel="stylesheet" href="css/registration.css">
	<link rel="stylesheet" href="../login/css/login.css"/>
	<link rel="stylesheet" href="../css/navigation.css" />
	<link rel="stylesheet" href="../css/search.css" />
    <link rel="stylesheet" href="../css/index.css" />
	<title>Registration</title>
  </head>
  
  <body>
 
  <div class="menu">

	  <div class="menu1">
         <a href="../index.php">VirtualMarket</a>
		 <a href="../berichten.php">Messages</a>
         <a href="../contact.php">Contact</a> 
	  </div>
	  
	  <div class="menu2">
	     <a href="../terms/terms.php">Terms</a>	 
         <a href="javascript:void(0);" class="icon" onclick="document.getElementById('id01').style.display='block'">My ads</a>
		 <a href="../about.php">About</a>
	  </div>
	
 </div>
	
	<br />
	<br />
	<br />
	<br />
	<!-- =========================================================================
	================================Search Menu===================================
	========================================================================== -->
<form class="search" action="search_bar.php">

<div class="header">
 <div class="searchmenu">
      <input id="searchInput" type="text" name="searchInput" placeholder="Search" required>

 <select class="searchSelect" name="searchSelect">
   <option selected value="1">All groups</option>
   <option value="2">Antiek en Kunst</option>
   <option value="2">Adio, TV, Foto's</option>
   <option value="2">Auto's</option>
   <option value="3">auto-onderdelen</option>
   <option value="2">auto-diversen</option>
   <option value="4">Boeken</option>
   <option value="2">Caravans en Kamperen</option>
   <option value="5">Cd's en Dvd'S</option>
   <option value="2">Computers en Software</option>
   <option value="6">Contacten en Berichten</option>
   <option value="2">Diensten en Vakmensen</option>
   <option value="7">Dieren en Toebehoren</option>
   <option value="2">Doe-Het-Zelfen Verbouw</option>
   <option value="8">Fietsen en Brommers</option>
   <option value="2">Hobby en Vrije tijd</option>
   <option value="9">Huis en Inrichting</option>
   <option value="2">Antiek</option>
   <option value="10">Huizen en Kamers</option>
   <option value="2">Kinderen en Baby's</option>
   <option value="11">Kleding Dames</option>
   <option value="2">Kleding Heren</option>
   <option value="12">Motoren</option>
   <option value="13">Muziek en Instrumenten</option>
</select>

<input id="PosctcodeInput" type="text" name="searchInput" placeholder="Postal Code" required>

<select name="afstand" class="afstand">
  <option selected value="0">All distances</option>
  <option value="1">3KM</option>
  <option value="2">5KM</option>
  <option value="3">10KM</option>
  <option value="4">15KM</option>
  <option value="5">25KM</option>
  <option value="6">50KM</option>
  <option value="7">75KM</option>
</select>
  <input type="button" value="Search" id="btnZoek"/>
     </div>
	 
	 
	   <img id="logo1" src="../Pictures/logo.jpg" width="250" height="95" alt="logo" title="Virtual Market" />
 </div>
</form>
  <br />
  <br />
  <br />
  <br />
  <br />


<!--  ==========================registration form ============= -->
<form action="../functions/register_page.php" method="post">
  <div class="container">
        <h1>Register</h1>
            <p>Please fill in this form to create an account.</p>
             <hr>

    <label ><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required>

    <label ><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label ><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label ><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
    <hr>
    <p>By creating an account you agree to our <a href="../terms/terms.php">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
    </div>
  
 <div class="container signin">
       <p>Already have an account? <a href="javascript:void(0);" class="icon" onclick="document.getElementById('id01').style.display='block'">Login</a>.</p>

  </div>
</form>




	 
	  
   
       <div id="footer"><img src="../Pictures/wallpaper.jpg" width="1341" height="507" alt="Virtua lMarket" title="Virtual Market" /></div> 

   
  
    
	
	
	
	<!-- =========================================================================
	================================LOGINMenu===================================
	========================================================================== -->
	
<!-- =======================User Login============================== -->

<form id="id01"  class="login"  action="../login/user_login.php" method="post">
      <div class="imgcontainer">
	       	   <img src="../Pictures/login.jpg" width="429" height="321" alt="login" title="Virtual Market" />
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