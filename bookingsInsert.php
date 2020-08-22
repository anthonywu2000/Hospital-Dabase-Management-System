<?php

$message = false;
$insurance_id ="";
$phone = "";
$name = "";
$gender = "";
$address = "";
$birthdate = "";
$physician_id = "";
$date_of_appointment = "";
$examination_room_location = "";
$timeslots = "";

//$a_id = rand(100, 99999);

if (isset($_POST['submit'])) {
	if (isset($_POST['insurance_id']) and isset($_POST['phone']) and isset($_POST['name']) and isset($_POST['gender']) and isset($_POST['address']) and isset($_POST['birthdate']) and isset($_POST['physician_id']) and isset($_POST['date_of_appointment']) and isset($_POST['examination_room_location']) and isset($_POST['timeslots'])) {
        $insurance_id = $_POST['insurance_id'];
        $phone = $_POST['phone'];
        $name = $_POST['name'];
        $gender = $_POST['gender'];
        $address = $_POST['address'];
        $birthdate = $_POST['birthdate'];
        $physician_id = $_POST['physician_id'];
        $date_of_appointment = $_POST['date_of_appointment'];
        $examination_room_location = $_POST['examination_room_location'];
        $timeslots = $_POST['timeslots'];
    }

    $a_id = rand(100, 99999);

    $dbconnect = mysqli_connect('localhost', 'root', 'aries330', '304 Hospital Data');
    if ($insurance_id == ""|| $phone == ""|| $name == ""|| $gender == ""|| $address == ""|| $birthdate == "") {
         $message = "Please Complete All Required fields.";
    } else {
    	  $sql = mysqli_query($dbconnect, "INSERT INTO Patient_Advice2(Phone, Name, Gender, Address, Birthdate) VALUES ('$phone', '$name', '$gender', '$address', '$birthdate')");
        if ($sql) {
    	    echo "Data inserted.\n";
            //$sql0 = mysqli_query($dbconnect, "INSERT INTO PatientAdvice1(Phone,)"
            //$sql1 = mysqli_query($dbconnect, "INSERT INTO Appointment2(Insurance_ID, Appointment_ID) VALUE ('$insurance_id', '$a_id')");
            // if ($sql1) {
            //     echo "Appointment_ID: ". $a_id . " assigned to your records.";
            // } else {
            //     echo "Appointment_ID not assigned";
            // }
            $sql1 = mysqli_query($dbconnect, "INSERT INTO PatientAdvice1 VALUES ('$phone', '$insurance_id', null, null, null, '$physician_id', null, null, null, null)");
            if ($sql1) {
                echo "Info saved.\n";
                $sql2 = mysqli_query($dbconnect, "INSERT INTO Appointment2(Insurance_ID, Appointment_ID) VALUE ('$insurance_id', '$a_id')");
                if ($sql2) {
                   echo "Appointment_ID: ". $a_id . " assigned to your records. Please take note of this number.\n";

                   //$res = mysqli_query($dbconnect, "SELECT Examination_Room_Location FROM Physician_BelongsTo_TrainedIn1 WHERE '$physician_id' = ID");

                   $sql3 = mysqli_query($dbconnect, "INSERT INTO Appointment1 VALUES ('$insurance_id', '$physician_id', '$examination_room_location', '$timeslots', '$date_of_appointment')");
                   
                   if ($sql3) {
                    echo "All inserted.\n";
                   } else {
                    echo "Error while insert.";
                   }

                } else {
                   echo "Appointment_ID not assigned";
                }
            } else {
                echo "Info not assigned.";
            }

            // $sql2 = mysqli_query($dbconnect, "INSERT INTO Appointment2(Insurance_ID, Appointment_ID) VALUE ('$insurance_id', '$a_id')");
            // if ($sql2) {
            //     echo "Appointment_ID: ". $a_id . " assigned to your records.";
            // } else {
            //     echo "Appointment_ID not assigned";
            // }


            // $sql3 = mysqli_query($dbconnect, "INSERT INTO Appointment1 VALUES ('$insurance_id', '$physician_id', '$examination_room_location', '$timeslots', '$date_of_appointment'");
            // if ($sql3) {

            // }
        } else {
    	    echo "Failed to insert";
        }
    }
    // $sql = mysqli_query($dbconnect, "INSERT INTO Patient_Advice2(Phone, Name, Gender, Address, Birthdate) VALUES ('$phone', '$name', '$gender', '$address', '$birthdate')");
    // if ($sql) {
    // 	echo "Data inserted";
    // } else {
    // 	echo "Failed to insert";
    // }
}
?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
<html>
<head>
<style>
body {
    background-color: #ff847c;
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

     <p style="font-family: chalkboard">Please press the back button to be redirected back to the main page.</p>
     <a href = "index.php"><button><em>Back</em></button></a>


    <div class="footer">
      <p style="font-family: chalkboard">Address: 8638 Marine Drive, Vancouver, BC X6X X7T     Email: ubccoasthospital@gmail.com     Phone Service: +1 (865)-433-8917</p>
    </div>
</body>
</head>
</html>



