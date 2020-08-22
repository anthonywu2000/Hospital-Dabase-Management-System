<?php 
//require_once "connection.php";

$mysqli = NEW MySQLi('localhost', 'root', 'aries330', '304 Hospital Data');





?>

<html lang="en" dir="ltr">

<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: #ff847c;
}
h1 {
	color: orange;
	font-family: chalkboard;
	font-size: 200%;
}
/*.button {
  border: none;
  color: white;
  padding: 25px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  transition-duration: 0.5s;
  cursor: pointer;
}
.button1 {
  background-color: green; 
  color: black; 
  border: 2px solid #4CAF50;
}
.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: grey; 
  color: black; 
  border: 2px solid #008CBA;
}
.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: #fca903; 
  color: black; 
  border: 2px solid #008CBA;

}
.button3:hover {
  background-color: #008CBA;
  color: white;
}*/

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
</head>
<body>
	<h1 style="text-align:center">Welcome to UBC Coast Hospital's web portal</h1>
	<h2 style="text-align:left">About Us</h2>
	<p style="font-family: chalkboard"><i>The UBC Coast Hospital (formed in 2000) is located in UBC campus and provides many medical services to students, families, adults, and elderly care. We offer high quality medical care to the neighborhood living close to the campus. </i></p>
	<h2 style="text-align:left">Please select any service below:</h2>

	<!-- <button class="button button1"><em>Book an Appointment</em></button>
    <button class="button button2"><em>Physician/Nurse Login</em></button>
    <button class="button button3"><em>Receptionist Login</em></button> -->

    <a href = "bookAppointments.php"><button><em>Book an appointment</em></button></a>
    <a href = "nurselogin.php"><button><em>Physician Login</em></button></a>
    <a href = "receptionist.html"><button><em>Receptionist Area</em></button></a>
    <a href = "facilitiesPage.php"><button><em>Facilities</em></button></a>


    <div class="footer">
      <p style="font-family: chalkboard">Address: 8638 Marine Drive, Vancouver, BC X6X X7T     Email: ubccoasthospital@gmail.com     Phone Service: +1 (865)-433-8917</p>
    </div>

</body>
</html>
