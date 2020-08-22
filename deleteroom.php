<?php

include 'connection.php';
echo "
<form action='success_assign.php' method='post'>";
$conn = OpenCon();

$room_assign = $_POST['room_assign'];
$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');
$sql_show = "SELECT Room_Number FROM rooms_locatedin1 WHERE Room_Number = $room_assign";
$rsResult = mysqli_query($mysqli, $sql_show);
if (mysqli_num_rows($rsResult) == 0) {
  echo "That is not a valid room (either unnavailable or non-existent)";
}

$sql1 = "DELETE FROM rooms_locatedin1 WHERE Room_Number = '$room_assign'";

echo '<br>
<br>';

if ($conn->query($sql1) ===
TRUE) {echo "Room Deleted Successfully";
} else {
echo "Error updating record: " . $conn->error;
}


echo "
<br>
<br>
<form action='index.php' method='post'>
<input type='submit' value='Back to Home'>
";

?>
