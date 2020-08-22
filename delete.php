<?php

echo "<h1>All Rooms:</h1>";

$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');

$sql_show = "SELECT r.Room_Number, r.Room_Floor, r.Room_Block_Code, r.Room_Phone, r.Availability FROM rooms_locatedin1 r";
$res = mysqli_query($mysqli, $sql_show);

echo"<table border='1'>";
echo"<tr><td>Room Number</td><td>Room Floor</td><td>Room Block Code</td><td>Room Phone</td><td>Availability</td><tr>";
while($row = mysqli_fetch_assoc($res)) {
    echo"<tr><td>{$row['Room_Number']}</td><td>{$row['Room_Floor']}</td><td>{$row['Room_Block_Code']}</td><td>{$row['Room_Phone']}</td><td>{$row['Availability']}</td><tr>";
}
echo"</table>";


echo "
<form action='deleteroom.php' method='post'>

<br><br><label>Which room would you like to remove?:</label>
<input name='room_assign' type='text' placeholder='Type Here'>

<input type='submit' value='Delete'>

";

?>
