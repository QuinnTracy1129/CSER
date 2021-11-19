<?php

$FirstName = filter_input(INPUT_POST, 'fname');
$MiddleName = filter_input(INPUT_POST, 'mname');
$LastName = filter_input(INPUT_POST, 'lname');
$gender = filter_input(INPUT_POST, 'gender');
$civil = filter_input(INPUT_POST, 'civil');
$username = filter_input(INPUT_POST, 'uname');
$password = filter_input(INPUT_POST, 'pw');
$birthday = filter_input(INPUT_POST, 'DoB');
$eadd = filter_input(INPUT_POST, 'eadd');
$contacts = filter_input(INPUT_POST, 'contacts');
$addr = filter_input(INPUT_POST, 'addr');
$img_name = filter_input(INPUT_POST, 'img');

//Email verification
include('Connector/connectionString.php');

$prevent_duplicate = "SELECT eadd
                      FROM users
                      WHERE eadd = '$eadd'";

$result = mysqli_query($conn, $prevent_duplicate);

$count = mysqli_num_rows($result);

if($count > 0){
  $message = "Email already taken. Please choose another Email.";
echo "<script type='text/javascript'>alert('$message');history.back();</script>";

    return false;
}
//End of Email verification

if (mysqli_connect_error()){
 die('Connect Error ('. mysqli_connect_errno() .') '
   . mysqli_connect_error());
}
else{

	$img_name=$_FILES['file']['name'];
	$file_loc = $_FILES['file']['tmp_name'];
	$file_size = $_FILES['file']['size'];
	$file_type = $_FILES['file']['type'];
	$folder="CSER/img/".$eadd."/";

   $age = (date('Y') - date('Y',strtotime($birthday)));

if ($age > 17){
      	$gender = $gender==1?0:1;
        $sql =  "INSERT INTO `users`( `uname`, `pw`, `fname`, `mname`, `lname`, `gender`, `civil`, `eadd`, `DoB`, `img`, `contacts`, `addr`)
            VALUES   ('$username', '".md5($password)."', '$FirstName', '$MiddleName', '$LastName', '$gender', '$civil', '$eadd', '$birthday', '$img_name', '$contacts', '$addr')";

       if ($conn->query($sql)){
          	  mkdir($folder, 0, true);
           		move_uploaded_file($file_loc,$folder.$img_name);

              @$file = fopen("signupRecords.txt","a");
              @$mydate=getdate(date("U"));
              fwrite($file,"$mydate[month] $mydate[mday], $mydate[year] $mydate[hours]:$mydate[minutes]:$mydate[seconds]");
              fwrite($file,"$mydate[month] $mydate[mday], $mydate[year] $mydate[hours]:$mydate[minutes]:$mydate[seconds]");
              fwrite($file," User $LastName, $FirstName $MiddleName is now Registered"."\r\n");
              fclose($file);

              echo "<script type='text/javascript'>alert('Registration Successful');</script>";

         }else{
             echo "Error: ". $sql ."
             ". $conn->error;
       }
  }
 else{
          echo "<script type='text/javascript'>alert('You need to be 18 or older.');history.back();</script>";
 }
    $conn->close(); ?>
    <script> window.location = 'index.php'; </script>
  <?php } ?>
