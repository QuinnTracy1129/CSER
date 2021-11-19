<?php
$conn= new mysqli('localhost','root','','cser')or die("Could not connect to mysql".mysqli_error($conn));

if(isset($_POST['create-admin']))	{

	if($_POST['code'] != 3296055){
		echo ("<script> alert('Entered Code is not valid.')
			history.back();</script>");
	} else {
		$uname=$_POST['uname'];
		$pw=$_POST['pw'];
		$rpw=$_POST['rpw'];
		$eadd=$_POST['eadd'];
		$fname=$_POST['fname'];
    $mname=$_POST['mname'];
		$lname=$_POST['lname'];
		$contacts=$_POST['contacts'];
    $gender=$_POST['gender'];
		$DoB=$_POST['DoB'];
			$uname = stripslashes($uname);
			$uname = mysqli_real_escape_string($conn,$uname);
			$pw = stripslashes($pw);
			$pw = mysqli_real_escape_string($conn,$pw);
			$rpw = stripslashes($rpw);
			$rpw = mysqli_real_escape_string($conn,$rpw);
			$eadd = stripslashes($eadd);
			$eadd = mysqli_real_escape_string($conn,$eadd);

include('Connector/connectionString.php');

      $prevent_duplicate = "SELECT eadd
                            FROM users
                            WHERE eadd = '$eadd'";

      $result = mysqli_query($conn, $prevent_duplicate);

      $count = mysqli_num_rows($result);

      if($count > 0){
        $message = "Email already taken. Please choose another Email.";
      echo "<script type='text/javascript'>alert('$message');</script>";
          return false;
      }
			else{
				if($pw!=$rpw)
				{
					echo("<script> alert('Password did NOT match.')
					history.back();</script>");
				}
				else{
					$img_name=$_FILES['file']['name'];
					$file_loc = $_FILES['file']['tmp_name'];
					$file_size = $_FILES['file']['size'];
					$file_type = $_FILES['file']['type'];
					$folder="CSER/img/".$eadd."/";

	$gender = $gender==1?0:1;

          $sql = "INSERT INTO `users`( `uname`, `pw`, `fname`, `mname`, `lname`, `gender`, `atype`,`status`, `eadd`, `DoB`, `img`, `contacts`)
										VALUES ('$uname', '".md5($pw)."', '$fname', '$mname', '$lname', '$gender', 1, 1, '$eadd', '$DoB', '$img_name', '$contacts')";

          if ($conn->query($sql)){

            	 mkdir($folder, 0, true);
         					move_uploaded_file($file_loc,$folder.$img_name);

                  @$file = fopen("signupRecords.txt","a");
                  @$mydate=getdate(date("U"));
                  fwrite($file,"$mydate[month] $mydate[mday], $mydate[year] $mydate[hours]:$mydate[minutes]:$mydate[seconds]");
                  fwrite($file,"$mydate[month] $mydate[mday], $mydate[year] $mydate[hours]:$mydate[minutes]:$mydate[seconds]");
                  fwrite($file," User $lname, $fname $mname is now Registered"."\r\n");
                  fclose($file);

         					echo "<script>alert('Registration Successful');</script>"; ?>

            <script> window.location = "index.php"; </script>
        <?php }
         else{
           echo "Error: ". $sql ."
        ". $conn->error;
         }
         $conn->close();
        }
			}
		}
	}
?>
