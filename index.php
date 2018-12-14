<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="generator" content="Onelio Reiph">
    <meta name="dcterms.created" content="di, 11 dec 2018 09:10:07 GMT">
    <meta name="description" content="Virtual Market">
    <meta name="keywords" content="">
	<link rel="stylesheet" href="login/css/login.css"/>
	<link rel="stylesheet" href="css/index.css" />
	<link rel="stylesheet" href="css/navigation.css" />
	<link rel="stylesheet" href="css/search.css" />
    <link rel="stylesheet" href="../Virtual_Market/users/css/mijnAdevertenties.css" />
	
	<title>Virtual Market</title>
	
	
  </head>
  <style>
  
  #textHint{
  padding:8px;
  margin-left:50px;
  background-color:white;
  border-style:solid;
  border-color:gray;
  border-width:4px;
  width:200px;
 float:left;
   }
  
  
table,th,td {
  border : 1px solid black;
  border-collapse: collapse;
}
th,td {
  padding: 5px;
}
</style>
  <body>
 
 
 
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
	
	<!-- =========================================================================
	================================Search Menu===================================
	========================================================================== -->
<form class="search" action="search_bar.php">

<div class="header">
 <div class="searchmenu">
      <input id="searchInput" type="text" name="searchInput" placeholder="Search" required>

	  <form action="">
 <select class="searchSelect" name="searchSelect" onchange="showCustomer(this.value)">
   <option selected value="51">All groups</option>
   <option value="o.e REIPH">name</option>
   <option value="auto">Auto</option>
   <option value="books">Books</option>
   <option value="tv">TV</option>
   <option value="56">auto-diversen</option>
   <option value="57">Boeken</option>
   <option value="58">Caravans en Kamperen</option>
   <option value="59">Cd's en Dvd'S</option>
   <option value="60">Computers en Software</option>
   <option value="61">Contacten en Berichten</option>
   <option value="62">Diensten en Vakmensen</option>
   <option value="63">Dieren en Toebehoren</option>
   <option value="62">Doe-Het-Zelfen Verbouw</option>
   <option value="65">Fietsen en Brommers</option>
   <option value="66">Hobby en Vrije tijd</option>
   <option value="67">Huis en Inrichting</option>
   <option value="68">Antiek</option>
   <option value="69">Huizen en Kamers</option>
   <option value="70">Kinderen en Baby's</option>
   <option value="71">Kleding Dames</option>
   <option value="72">Kleding Heren</option>
   <option value="73">Motoren</option>
   <option value="74">Muziek en Instrumenten</option>
</select>
</form>



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
 
	   <img id="logo1" src="Pictures/logo.jpg" width="250" height="95" alt="logo" title="Virtual Market" />
 </div>
</form>
  <br />
  <br />
  <br />
  <br />
  <br />

 <div class="body">
   
   <div class="uitgelicht"> 
      <a href="#">Antiek en Kunst</a><br />
      <a href="#">Adio, TV, Foto's</a><br />
      <a href="#">Auto's</a><br />
      <a href="#">auto-onderdelen</a><br />
      <a href="#">auto-diversen</a><br />
      <a href="#">Boeken</a><br />
      <a href="#">Caravans en Kamperen</a><br />
      <a href="#">Cd's en Dvd'S</a><br />
      <a href="#">Computers en Software</a><br />
      <a href="#">Contacten en Berichten</a><br />
      <a href="#">Diensten en Vakmensen</a><br />
      <a href="#">Dieren en Toebehoren</a><br />
      <a href="#">Doe-Het-Zelfen Verbouw</a><br />
      <a href="#">Fietsen en Brommers</a><br />
      <a href="#">Huis en Inrichting</a><br />
      <a href="#">Antiek</a><br />
      <a href="#">Huizen en Kamers</a><br />
      <a href="#">Kinderen en Baby's</a><br />
      <a href="#">Kleding Dames</a><br />
      <a href="#">Kleding Heren</a><br />
      <a href="#">Motoren</a><br />
      <a href="#">Muziek en Instrumenten</a><br />
	</div>
<br />

   <div id="bericht">   
	   <img id="logo" src="Pictures/logo.jpg" width="535" height="200" alt="logo" title="Virtual Market" />
	   <div id="bericht_l">
	   <img src="Pictures/advertisements.jpg" width="430" height="200" alt="message" title="Virtual Market" />
	   </div>
	  

	  <!-- ===========================================================================================
  +++++++++++++++++++++++++++++++++++AJAX++++++++++++++++=++++++++++++++++++++++++++
  ============================================================================================= -->
	  
	  <div id="txtHint"></div>

<script>
function showCustomer(str) {
  var xhttp;    
  if (str == "") {
    document.getElementById("ads").innerHTML = "";
    return;
  }
var x = document.getElementById("ads");
x.remove(x.selectedIndex)
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("txtHint").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "placeAd.php?q="+str, true);
  xhttp.send();
}
</script>

	 
	  
	  
<!-- ===========================================================================================
  +++++++++++++++++++++++++++++++++++Calling database++++++++++++++++=++++++++++++++++++++++++++
  ============================================================================================= -->

   <?php	
     $servername = "localhost";
     $username = "oreiph";
     $password = "1771128903";
     $dbname = "virtual_market";

$conn = mysqli_connect($servername, $username, $password, $dbname);
   if($conn->connect_errno){
                            echo "Connection failed " . $conn->connect_error; 
                            exit();
                           }

$sqlCommand ="SELECT * FROM advertentie ORDER BY ID DESC LIMIT 100";
$sqlUitvoer	= mysqli_query($conn,$sqlCommand);

if ($sqlUitvoer->num_rows>0) {
         while ($row = mysqli_fetch_array($sqlUitvoer)) {
		      
		echo "<p id='ads'>"."<img id='img1' src='images/".$row['file']."' width='200' height='130' onclick='myFunction()'>";
		echo "<br>"."<br>"."<b>"."Advertisement #:  "."</b>".$row['id']."<br>";
		echo "<b>"."Advertiser:  "."</b>".$row['username']."<br>";
		echo "<b>"."Group:  "."</b>".$row['groep']."<br>";
		echo "<a href='https://www.google.com'>google</a>"."<br>";
		echo "_________________________"."<br>";
		echo "<b>"."Discription:  "."</b>"."<br>".$row['advertentie']."<br>"."</p>";
		
     
    
    }}
	mysqli_close($conn);
?>  
	   
	  <script>
function myFunction() {
 document.write('<img src="../../images/kweek.jpg" width="412" height="384" />  <br />  <h3><a href="index.php">Back</a></h3>');
}
</script>
	 
 
	   <div ><img id="footer" src="Pictures/wallpaper.jpg" width="975" height="507" alt="Virtua lMarket" title="Virtual Market" /></div> 

    </div>
   
<!-- ===============================================================
================================LOGINMenu===========================
==================================================================== -->
	
<!-- =======================User Login============================== -->

<form id="id01"  class="login"  action="login/user_login.php" method="post">
      <div class="imgcontainer">
	      
		   <img src="Pictures/login.jpg" width="429" height="321" alt="login" title="Virtual Market" />
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