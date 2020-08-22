<?php
function OpenCon()
{
     $dbhost = "localhost";
     $dbuser = "root";
     $dbpass = "aries330";
     $db = "304 Hospital Data";
     $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
     return $conn;
}
function CloseCon($conn)
{
     $conn -> close(); 
}
?>