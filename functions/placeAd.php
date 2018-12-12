
 <?php	
$username = "oreiph";
$password = "1771128903";
$dbname = "virtual_market";
$servername = "localhost";
$date = date("Y-m-d H:i:s");

$conn = mysqli_connect($servername, $username, $password);		
		
$name = $_POST["name"];
$title = $_POST["title"];
$email = $_POST["email"];
$file = $_FILES['image']['name'];
$blog = mysqli_real_escape_string($conn, $_POST['image_text']);

$sqlCommand1= "use virtual_market";
$sqlUitvoer	= mysqli_query($conn,$sqlCommand1);

//=========================sending to database=========================
$sqlCommand = "INSERT INTO advertentie (username, groep, advertentie,email,file)
VALUES ('$name', '$title', '$blog', '$email','$file')";
//$sqlUitvoer	= mysqli_query($conn,$sqlCommand);

if ($conn->query($sqlCommand) === TRUE) 
{
 $last_id = $conn->insert_id;   

 echo "New record created succesfully with ID: #". $last_id;
 }
  $conn->close();
 require('../users/mijnAdvertentie.php');
 ?>
 
