<?php

$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
<!--<html>-->
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {
	background-color: #ff847c;
}

h1 {
	color: blue;
	font-family: chalkboard;
	font-size: 200%;
    text-align: center;
}

h2 {
	color: black;
	font-family: times new roman;
	text-align: left;
}

.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: green;
  color: white;
  text-align: center;
}



::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  background: #f1f1f1; 
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: #888; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: #555; 
}



</style>
</head>

<body>

	<h1>Facilities</h1>
	<marquee behavior="scroll" direction="left"><p style="font-family: chalkboard">Our hospital welcomes patients with our friendly staffs and accomodating environment. Below are the information regarding our facilities upon your visit.</p></marquee>
	<h2>There are 4 buildings that make up hospital. Each blcok has certain facilities.</h2>
	<h3> Block A</h3>
	<p> Number of rooms for patients: <?php 
	$sql_displayA = "SELECT count(Room_Number) AS Num_Room_For_A FROM Rooms_LocatedIn1 WHERE Room_Block_Code = 'A'";
    $res = mysqli_query($mysqli, $sql_displayA);
    if ($sql_displayA) {
    	while($row = mysqli_fetch_assoc($res)) {
    		echo $row['Num_Room_For_A'];
    	}
    } else {
    	echo "null";
    }
    ?><br></p>


















































































