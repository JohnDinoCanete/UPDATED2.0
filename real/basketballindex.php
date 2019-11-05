<?php
//including the database connection file
include_once("functions.php");
//fetching data in descending order (lastest entry first)
$result = $db->query("SELECT * FROM basketball ORDER BY id DESC");
?>

<html>
<head>	
	<title>Homepage</title>
</head>

<body>
<a href="basketball.php">Add New Bet</a><br/><br/>

	<table width='80%' border=0>

	<tr bgcolor='#CCCCCC'>
		<td>Username</td>
		<td>Team</td>
		<td>Bet</td>
		<td>Update</td>
	</tr>
	<?php 	
	while($row = $result->fetch(PDO::FETCH_ASSOC)) { 		
		echo "<tr>";
		echo "<td>".$row['username']."</td>";
		echo "<td>".$row['team']."</td>";
		echo "<td>".$row['bet']."</td>";	
		echo "<td><a href=\"edit.php?id=$row[id]\">Edit</a> | <a href=\"delete.php?id=$row[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";		
	}
	?>
	</table>
</body>
</html>