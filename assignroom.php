<?php



include 'connection.php';
echo "
<form action='success_assign.php' method='post'>";

$room_assign = $_POST['room_assign'];
$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');
$sql_show = "SELECT Room_Number FROM rooms_locatedin1 WHERE Availability = 'Yes' AND Room_Number = $room_assign";
$rsResult = mysqli_query($mysqli, $sql_show);
if (mysqli_num_rows($rsResult) == 0) {
  echo "That is not a valid room (either unnavailable or non-existent)";
}

else {
  echo "<h1>Assigning Patient to: Room $room_assign</h1>";

  echo "
  <br><br><label>Patient ID:</label>
  <input name='patient_id' type='text'>

  <br><br><label>Enter Date:</label>
  <input name='enter_time' type='date'>

  <br><br><label>Leaving Date:</label>
  <input name='leave_time' type='date'>

  <br><br><label>Room Assigning:</label>
  <input name='room_assign' type='text' value=$room_assign>

  <br><br>

  <input type='submit' value='Submit'>";
}

?>
