
 <?php	
$username = "oreiph";
$password = "1771128903";
$dbname = "virtual_market";
$servername = "localhost";
$date = date("Y-m-d H:i:s");

$conn = mysqli_connect($servername, $username, $password, $dbname);		
		

//=========================sending to database=========================
//$sqlCommand = "SELECT id, username, file, groep, advertentie  FROM advertentie WHERE id=? ORDER BY ID DESC LIMIT 100";
$sqlCommand = "SELECT id, username, file, groep, advertentie  FROM advertentie WHERE groep=?";
//$sqlCommand ="SELECT * FROM advertentie ORDER BY ID DESC LIMIT 100";
//$sqlUitvoer	= mysqli_query($conn,$sqlCommand);

   if(!$conn){
                           						  echo "Error: Unable to connect to MySQL.";

                           }
			   

$stmt = $conn ->prepare($sqlCommand );
$stmt->bind_param("s", $_GET['q']);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($cid, $cname, $cfile, $cgroep, $cadvertentie);
//$stmt->fetch();



         // fetch values 

while($stmt->fetch()){
echo "<p id='textHint'>"."<img id='img1' src='images/".$cfile ."' width='200' height='130' onclick='myFunction()'>". "<br>";
echo "Id: " . $cid ."<br>";
echo "Name: " . $cname . "<br>";
echo "File: " . $cfile . "<br>";
echo "Group: " . $cgroep . "<br>";
echo "<a href='https://www.google.com'>google</a>"."<br>";
echo "_________________________"."<br>";
echo "Advertisment: " . $cadvertentie ."</p>" ;

}

$stmt->close();


 ?>
 
