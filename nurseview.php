<!DOCTYPE html>
<html>
<head>
    <title>Patient Information</title>
    <style type="text/css">
      table{
          border: 2px solid red;
          background-color: #FFC;
      }
      th{
          border-bottom: 5px solid #000
      }
      td{
          border-bottom: 2px solid #666;
      }
    </style>
</head>
<body>
<table>
    <t>
        <th>Patient_Insurance_ID</th>
        <th>Room_Number</th>
        <th>Room_Floor</th>
        <th>Room_Block_Code</th>
        <th>Entering_Date_And_Time</th>
        <th>Leaving_Date_And_Time</th>
    </t>

    <?php
    $conn = mysqli_connect("localhost","root","aries330","304 Hospital Data");
    if($conn->connect_error){
        die("Connect failed: %s\n". $conn -> error);
    }
    $sql = "SELECT * FROM patientstay1";
    $result = $conn->query($sql);
    if($result->num_rows>0){
        while($row=$result->fetch_assoc()){
   ?>
            <tr>
            <td><?php echo $row["Patient_Insurance_ID"]; ?></td>
            <td><?php echo $row["Room_Number"]; ?></td> 
            <td><?php echo $row["Room_Floor"];  ?></td>
            <td><?php echo $row["Room_Block_Code"]; ?></td>
            <td><?php echo $row["Entering_Date_And_Time"]; ?></td>
            <td><?php echo $row["Leaving_Date_And_Time"]; ?></td>
            </tr>
    <?php
            
        }  
    }    
   
    $conn->close();
    ?>

   
    
</table>
<form>
  <input type="button" value="Go back" onclick="history.back()">
</form>

</body>
</html> 

