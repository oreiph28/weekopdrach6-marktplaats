
 <?php	
$username = "oreiph";
$password = "1771128903";
$dbname = "virtual_market";
$servername = "localhost";
$date = date("Y-m-d H:i:s");

$conn = mysqli_connect($servername, $username, $password, $dbname);		
		

//=========================sending to database=========================
$sqlCommand = "SELECT username, file, groep FROM advertentie WHERE id=?";
$sqlUitvoer	= mysqli_query($conn,$sqlCommand);

   if(!$conn){
                           						  echo "Error: Unable to connect to MySQL.";

                           }
						   
					   

$stmt = $conn ->prepare($sqlCommand );
$stmt->bind_param("s", $_GET['q']);
$stmt->execute();
$stmt->store_result();
$stmt->bind_result($cid, $cname, $cfile);
$stmt->fetch();
$stmt->close();

echo "<table>";
echo "<tr>";
echo "<th>Username</th>";
echo "<td>" . $cid . "</td>";
echo "<th>Group</th>";
echo "<td>" . $cname . "</td>";
echo "<th>File</th>";
echo "<td>" . $cfile . "</td>";
echo "</tr>";
echo "</table>";

 ?>
 
