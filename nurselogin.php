  <?php
     include_once 'connection.php'; 
  ?>
  <!DOCTYPE html>
  <html>
  <head>
       <title></title>

  </head>
  <body>
 

     <h1 text-align: center>Physician Login</h1>
     <form action ="" method="POST">
        ID: <input type="text" id="ID" name="ID"><br><br>
        <input type ="submit" name = "submit" value="Submit">
         
     </form>
    <br> 
    
    <?php

       $dbconnect = mysqli_connect('localhost', 'root', 'aries330', '304 Hospital Data');
       //echo $_POST["submit"];  //wanna go to diff page by user input, not working
       if(isset($_POST["ID"]) and isset($_POST['submit'])) {
        
           $id = $_POST["ID"];
           if(strlen($id)>0 and substr($id,0,1)=='1'){//nurse part

               $sql = "SELECT ID FROM nurse WHERE ID = '$id';";
               $res = mysqli_query($dbconnect, $sql);
               while ($row = mysqli_fetch_assoc($res)) {
                $identify = $row['ID'];
               }
               if ($identify == $_POST['ID']) {
                echo 'Login success!';
                header("Location: nurseview.php");
               } else {
                echo 'Login failed.';
                header("Location: errorpage.html");
               }
               // $result = mysqli_query($conn,$sql);
               // $resultCheck=mysqli_num_rows($result);
               // echo "yes";
               // if($resultCheck>0){ //find the id,go to nurseview
               //     if($row = mysqli_fetch_assoc($result)){
               //         header('Location: nurseview.php'); //nurseview all done
               //         exit;
               //     }
                  
               // }
               // else{ //didn't find the id, go to error page
               //    echo "no";
               //    header("Location: errorpage.html");//doesn't work,can't go to next page
               //    exit;
               // }
                 
            }
            else if(strlen($id)>0 && substr($id,0,1)=='9'){//doctor part

               $sql1 = "SELECT ID FROM physician_belongsto_trainedin1 WHERE ID='$id';";
               $res1 = mysqli_query($dbconnect, $sql1);
               while ($row = mysqli_fetch_assoc($res1)) {
                $identify = $row['ID'];
               }
               if ($identify == $_POST['ID']) {
                echo 'Login success!';
                header("Location: doctorupdate.php");
               } else {
                echo 'Login failed';
                header("Location: errorpage.html");
               }
             }
            //    $result = mysqli_query($conn,$sql);
            //    $resultCheck=mysqli_num_rows($result);
            //    if($resultCheck>0){ //find the id,go to next page
            //       header("Location: doctorview.php "); //why not shown ??
            //       exit;
            //    }
            //    else{ //didn't find the id, go to error page
            //       echo"why";
            //       header("Location: errorpage.html");//doesn't work,can't go to next page
            //       exit;
            //    }
            // }
            // else{//the input is neither doctor nor nurse
            //    echo"what";
            //    header("Location: errorpage.html");//doesn't work,can't go to next page
            //    exit;
            // }
            
       }
    ?>
</body>
</html>