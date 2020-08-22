<?php

$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');
//$resultSet = $mysqli->query("SELECT Department_Name FROM Department");
$resultPhys = $mysqli->query("SELECT P1.ID FROM Physician_BelongsTo_TrainedIn1 P1");

// $message = false;
// $insurance_id ="";
// $phone = "";
// $name = "";
// $gender = "";
// $address = "";
// $birthdate = "";

// //more variables to come...
// if (isset($_POST) & !empty($_POST)) {
//     if (isset($_POST['insurance_id']) and isset($_POST['phone']) and isset($_POST['name']) and isset($_POST['gender']) and isset($_POST['address']) and isset($_POST['birthdate'])) {
//         $insurance_id = $_POST['insurance_id'];
//         $phone = $_POST['phone'];
//         $name = $_POST['name'];
//         $gender = $_POST['gender'];
//         $address = $_POST['address'];
//         $birthdate = $_POST['birthdate'];
//         //more variables to come...

//     }

//     if ($insurance_id == ""|| $phone == ""|| $name == ""|| $gender == ""|| $address == ""|| $birthdate == "") {
//         $message = "Please Complete All Required fields.";
//     } else {
//         $sql0 = "INSERT INTO Patient_Advice2(Phone, Name, Gender, Address, Birthdate) VALUES ('$phone', '$name', '$gender', '$address', '$birthdate')";
//         //more queries to come...

//         if (mysqli_query($mysqli, $sql0)) {
//             echo "Record created successfully!";
//         } else {
//             echo "Error: ". mysqli.error($mysqli);
//         }
//         $mysqli->close();
//     }
// }
?>



<!DOCTYPE html>
<html lang="en" dir="ltr">
<html>
<head>
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


<body>
    <form action = "bookingsInsert.php" method = "post">
        
 	<h1>Book an Appointment</h1>
 	<label for="insurance_id">Insurance_ID:</label>
    <input type="text" id="insurance_id" name="insurance_id" required><br><br>
    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" required><br><br>
    <label for="name">Full Name:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="gender">Gender:</label>
    <input type="text" id="gender" name="gender" required><br><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br><br>
    <label for="birthdate">Birthdate (In the form of YYYY-M-D):</label>
    <input type="text" id="birthdate" name="birthdate" required><br><br>

    <!--<label for="department name">Select Department:</label>-->
    <!--<select name = "departments">
    	<?php
        //while ($rows = $resultSet->fetch_assoc()) {
    		//$dept_name = $rows['Department_Name'];
    		//echo "<option value = '$dept_name'>$dept_name</option>";
    	//}
    	?>
    </select>-->
    <!-- <?php 
    
    //if (isset($_POST['departments'])) {
        //$dept_selected = $_POST['departments'];
        //$sql_filterPhys = "SELECT P1.Name, P4.Available_Days_and_Times FROM Physician_BelongsTo_TrainedIn1 P1, Physician_BelongsTo_TrainedIn3 P3, Physician_BelongsTo_TrainedIn4 P4, Department D1 WHERE '$dept_selected' = D1.Department_Name AND D1.ID = P3.Department_ID AND P3.Examination_Room_Location = P1.Examination_Room_Location AND P4.Examination_Room_Location = P1.Examination_Room_Location";
        //$res = mysqli_query($mysqli, $sql_filterPhys);
        //while($row = mysqli_fetch_array($res, MYSQLI_ASSOC)) {
        //    echo $row['Name'];
        //    echo "\n";
        //    echo $row['Availability'];
    //}
    ?> -->
    <?php 
    $sql_show = "SELECT P1.Name, P1.ID, P4.Available_Days_and_Times, P1.Examination_Room_Location, D.Department_Name FROM Physician_BelongsTo_TrainedIn1 P1, Physician_BelongsTo_TrainedIn4 P4, Department D, Physician_BelongsTo_TrainedIn3 P3 WHERE P1.Examination_Room_Location = P4.Examination_Room_Location AND P3.Department_ID = D.ID AND P3.Examination_Room_Location = P1.Examination_Room_Location";
    $res = mysqli_query($mysqli, $sql_show);

    echo"<table border='1'>";
    echo"<tr><td>Physician Name</td><td>Physician ID</td><td>Availability</td><td>Examination Room Location</td><td>Department Name</td><tr>";
    while($row = mysqli_fetch_assoc($res)) {
        echo"<tr><td>{$row['Name']}</td><td>{$row['ID']}</td><td>{$row['Available_Days_and_Times']}</td><td>{$row['Examination_Room_Location']}</td><td>{$row['Department_Name']}</td><tr>";
    }
    echo"</table>";
    ?>
    <br>
    <label for="physician_id">Select Physician (based on ID above):</label>
    <select name = "physician_id">
        <?php 
        while ($rows = $resultPhys->fetch_assoc()) {
            $phys = $rows['ID'];
            //$dept = $rows['Department_Name'];
            echo "<option value = '$phys'>$phys</option>";
        }
        ?>
    </select><br><br>
    <label for="date_of_appointment">Please select your date of appointment:</label>
    <input type="date" id="date_of_appointment" name="date_of_appointment" required><br><br>

    <label for="examination_room_location">Enter the room location as stated above to ensure your account is safe:</label>
    <input type="text" id="examination_room_location" name="examination_room_location" required><br><br>

    <label for="timeslots">Choose a timeslot for your appointment:</label>
    <select name = "timeslots" id="timeslots">
        <option value="8:30">8:30:00</option>
        <option value="9:00">9:00:00</option>
        <option value="9:30">9:30:00</option>
        <option value="10:00">10:00:00</option>
        <option value="10:30">10:30:00</option>
        <option value="11:00">11:00:00</option>
        <option value="11:30">11:30:00</option>

        <option value="13:00">13:00:00</option>
        <option value="13:30">13:30:00</option>
        <option value="14:00">14:00:00</option>
        <option value="14:30">14:30:00</option>
        <option value="15:00">15:00:00</option>
        <option value="15:30">15:30:00</option>
        <option value="15:30">15:30:00</option>
        <option value="16:00">16:00:00</option>
        <option value="16:30">16:30:00</option>
        <option value="17:00">17:00:00</option>
        <option value="17:30">17:30:00</option>

        <option value="18:30">18:30:00</option>
        <option value="19:00">19:00:00</option>
        <option value="19:30">19:30:00</option>
        <option value="20:00">20:00:00</option>
        <option value="20:30">20:30:00</option>
        <option value="21:00">21:00:00</option>
        <option value="21:30">21:30:00</option>
        <option value="22:00">22:00:00</option>
        <option value="22:30">22:30:00</option>
    <select>
    <br>
    <br>
    <!--<a href = "confirmedPage.php"><button>Submit</button></a>-->
    <input type = "submit" name = "submit" value="Submit">

    <div class="footer">
      <p style="font-family: chalkboard">Address: 8638 Marine Drive, Vancouver, BC X6X X7T     Email: ubccoasthospital@gmail.com     Phone Service: +1 (865)-433-8917</p>
    </div>

</body>


