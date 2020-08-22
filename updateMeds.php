<?php

$message = false;
$insurance_id = "";
$medication_code = "";
$medication_name = "";
$medication_brand = "";

//$a_id = rand(100, 99999);

if (isset($_POST['submit'])) {
	if (isset($_POST['insurance_id']) and isset($_POST['medication_code']) and isset($_POST['medication_name']) and isset($_POST['medciation_brand'])) {
        $medication_code = $_POST['medication_code'];
        $medication_name = $_POST['medication_name'];
        $medication_brand = $_POST['medication_brand'];
        $insurance_id = $_POST['insurance_id'];
    }
    //$a_id = rand(100, 99999);
    $dbconnect = mysqli_connect('localhost', 'root', 'aries330', '304 Hospital Data');
    $sql1 = mysqli_query($dbconnect, "UPDATE PatientAdvice1 SET Medication_Code = '$_POST[medication_code]', Medication_Name = '$_POST[medication_name]', Medication_Brand = '$_POST[medication_brand]' WHERE Insurance_ID = '$_POST[insurance_id]'");
    if ($sql1) {
    	  echo "Record updated.\n";
    } else {
    	  echo "Failed to update";
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

     <p style="font-family: chalkboard">Please press the back button to be redirected back to the main page, or select return to the patient info list.</p>
     <a href = "index.php"><button><em>Back</em></button></a>
     <a href = "doctorupdate.php"><button><em>Return</em></button></a>



    <div class="footer">
      <p style="font-family: chalkboard">Address: 8638 Marine Drive, Vancouver, BC X6X X7T     Email: ubccoasthospital@gmail.com     Phone Service: +1 (865)-433-8917</p>
    </div>
</body>
</head>
</html>



