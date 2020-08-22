<?php

$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');
$resultIns = $mysqli->query("SELECT Insurance_ID FROM Appointment2");

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
</style>


<body>
    <form class='form_edit' form action = "updateMeds.php" method = "post">
        
 	<h1>Patient Record and Medication Fill-Out</h1>
    
    <?php 
    $sql_show = "SELECT PA2.Name, PA2.Birthdate, PA1.Insurance_ID, A2.Appointment_ID, PA1.Assigned_Physician_ID, PA1.Medication_Code, PA1.Medication_Name, PA1.Medication_Brand FROM PatientAdvice1 PA1, Patient_Advice2 PA2, Appointment2 A2 WHERE PA1.Phone = PA2.Phone AND A2.Insurance_ID = PA1.Insurance_ID";
    $res = mysqli_query($mysqli, $sql_show);

    echo"<table border='1'>";
    echo"<tr><td>Patient Name</td><td>Birthdate</td><td>Insurance ID</td><td>Appointment ID</td><td>Assigned Physician ID</td><td>Medication Code</td><td>Medication Name</td><td>Medication Brand</td><tr>";
    while($row = mysqli_fetch_assoc($res)) {
        echo"<tr><td>{$row['Name']}</td><td>{$row['Birthdate']}</td><td>{$row['Insurance_ID']}</td><td>{$row['Appointment_ID']}</td><td>{$row['Assigned_Physician_ID']}</td><td>{$row['Medication_Code']}</td><td>{$row['Medication_Name']}</td><td>{$row['Medication_Brand']}</td><tr>";
    }
    echo"</table>";
    ?>
    <br>
    <label for="insurance_id">Select Patient Insurance ID above (based on ID above):</label>
    <select name = "insurance_id">
        <?php 
        while ($rows = $resultIns->fetch_assoc()) {
            $insurance_id= $rows['Insurance_ID'];
            //$dept = $rows['Department_Name'];
            echo "<option value = '$insurance_id'>$insurance_id</option>";
        }
        ?>
    </select><br><br>

    <label for="medication_code">Enter the medication code (3 digits) given in the medical list:</label>
    <input type="text" id="medication_code" name="medication_code" required><br><br>

    <label for="medication_name">Enter the medication name given in the medical list:</label>
    <input type="text" id="medication_name" name="medication_name" required><br><br>

    <label for="medication_brand">Enter the medication brand given in the medical list:</label>
    <input type="text" id="medication_brand" name="medication_brand" required><br><br>
    
    <br>
    <br>
    <br>
    <!--<a href = "confirmedPage.php"><button>Submit</button></a>-->
    <input type = "submit" name = "submit" value="Submit">

    <div class="footer">
      <p style="font-family: chalkboard">Address: 8638 Marine Drive, Vancouver, BC X6X X7T     Email: ubccoasthospital@gmail.com     Phone Service: +1 (865)-433-8917</p>
    </div>

</body>