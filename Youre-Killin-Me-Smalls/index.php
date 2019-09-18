<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<title>Movie Quote Database</title>
<style type="text/css">
    body{margin: 40px auto; max-width: 85%; line-height: 1.6; font-size: 18px; color: #444; background: #EEE; padding:0 10px}
    h1,h2,h3 {line-height:1.2}
    table, th, td {border: 1px solid black;}
</style>
</head>
<body>

<h2>Search Movie Quote Database:</h2>
<form action="index.php">
    <input type='text' name='quote' />
    <input type='submit' value='submit' />
</form>

<?php

if(!empty($_GET) || $_GET == ""){
	$quote = $_GET['quote'];
	if($quote == ""){
	echo "You've gotta search for something!";
	return;
	}
	if($quote == "%"){
	echo "Try being more specific!";
	return;
	}
	if (! preg_match('/[^%]/', $quote)) {
	echo "Too many wildcards. Don't do that!";
	return;
	}	
	// Hard coded response for flag searches - edit this to match flag string
	if ($quote == "flag"){
    		echo "<table><tr><th>ID</th><th>Quote</th><th>Character</th><th>Actor</th><th>Film</th><th>Year</th></tr>";
        	echo "<tr><td>1337</td><td>flag</td><td>nice try ¯\_(ツ)_/¯</td><td>nice try ¯\_(ツ)_/¯</td><td>nice try ¯\_(ツ)_/¯</td><td>nice try ¯\_(ツ)_/¯</td></tr>";
	return;
	}
	}

	$servername = "localhost";
	$username = "admin";
	$password = "password";
	$dbname = "quotesdb";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}

	$sql = "SELECT * FROM quotes WHERE quote LIKE '$quote'" ;
	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
    		echo "<table><tr><th>ID</th><th>Quote</th><th>Character</th><th>Actor</th><th>Film</th><th>Year</th></tr>";
    	// output data of each row
    	while($row = $result->fetch_assoc()) {
        	echo "<tr><td>".$row["id"]."</td><td>".$row["quote"]."</td><td>".$row["character"]."</td><td>".$row["actor"]."</td><td>".$row["film"]."</td><td>".$row["year"]."</td></tr>";
    	}
    	echo "</table>";
	} else {
    	echo "0 results";
	}
	$conn->close();
} else {
	echo "0 results";
}

?>

</body>
</html>
