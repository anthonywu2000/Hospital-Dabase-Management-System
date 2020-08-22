<?php
include 'connection.php';
$room_assign = "'";
$p_id = "";
$e_time = "";
$l_time = "";
$room_floor = "";
$room_block = "";

$room_assign = $_POST['room_assign'];
$p_id = $_POST['patient_id'];
$e_time = $_POST['enter_time'];
$l_time = $_POST['leave_time'];
$conn = OpenCon();

$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');
$sql = "SELECT Room_Floor, Room_Block_Code FROM rooms_locatedin1 WHERE Room_Number = '$room_assign'";

$query = mysqli_query($mysqli, $sql);
$row = mysqli_fetch_assoc($query);
$room_floor = $row['Room_Floor'];
$room_block = $row['Room_Block_Code'];


$sql1 = "update patientadvice1 set stay_Room_Number = '$room_assign',
Stay_Room_Floor = '$room_floor', Stay_Room_Block_Code = '$room_block' where Insurance_ID = '$p_id'";

echo '<br>
<br>';

if ($conn->query($sql1) ===
TRUE) {
} else {
echo "Error updating record: " . $conn->error;
}

$sql2 = "update patientstay1 set Room_Number = '$room_assign',
Room_Floor = '$room_floor', Room_Block_Code = '$room_block',
Entering_Date_And_Time = '$e_time', Leaving_Date_And_Time = '$l_time'
where Patient_Insurance_ID = '$p_id'";

echo '<br>
<br>';

if ($conn->query($sql2) ===
TRUE) {
} else {
echo "Error updating record: " . $conn->error;
}

$sql3 = "update rooms_locatedin1 set Availability = 'No'
where Room_Number = '$room_assign'";

echo '<br>
<br>';

if ($conn->query($sql3) ===
TRUE) { echo "Record updated
successfully";
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
