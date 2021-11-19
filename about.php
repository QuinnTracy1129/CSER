<?php
session_start();
include ("Connector/connect.php");

	if(isset($_POST['login']))	{
		$email = $_POST['email'];
		$pw = $_POST['pw'];
		$email = stripslashes($email);
		$email = mysql_real_escape_string($email);
		$pw = stripslashes($pw);
		$pw = mysql_real_escape_string($pw);


		$query = "SELECT *
							FROM users
							WHERE eadd='$email' and pw='".md5($pw)."'";
		$qry = mysql_query($query);


		if(!$qry)
		{
			die("Could not connect to database.".mysql_error());
		}
		else
		{
			$numrow = mysql_num_rows($qry);
			if($numrow>0)
			{
				while($row = mysql_fetch_array($qry))
				{
					session_start();
					$_SESSION['id']=$row[0];
					$_SESSION['email']=$email;
					$uname=$row[1];
					$_SESSION['username']=$uname;
					$_SESSION['pw']=$row[2];
					$_SESSION['atype']=$row[8];
					$_SESSION['img']=$row['img'];

					$UserType=$row[8]=1?"Admin":"user";;
					header("location:CSER/GUI/home.php");

					@$file = fopen("userList.txt","a");
					@$mydate=getdate(date("U"));
					fwrite($file,$mydate[month]." ".$mydate[mday].",".$mydate[year]." ".$mydate[hours].":".$mydate[minutes].":".$mydate[seconds]);
					fwrite($file,$UserType." ".$uname." is Logged In"."\r\n");
					fclose($file);
				}
			}else{
				echo("<script type='text/javascript'> alert ('EMAIL and PASSWORD did not match')</script>");
				}
			}
	}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>About CSER</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link href="favicon.ico" rel="shortcut icon">
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
    </head>
    <body>
		<div id="body_bg">
            <div id="container_header" class="container">
                <div id="header" class="row">
                    <div class="col-md-12 margin-top-15">
                        <!-- Header Social Icons -->

                        <!-- End Header Social Icons -->
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="primary-container-group">
                <!-- Background -->
                <div class="primary-container-background">
                    <div class="primary-container"></div>
                    <div class="clearfix"></div>
                </div>
                <!--End Background -->
                <div class="primary-container">
                    <div id="container_hornav" class="container no-padding">

                        <!-- Slogan -->
                        <p class="site-slogan">Civil Service Exam Reviewer</p>
                        <!-- End Slogan -->
                        <!-- Top Menu -->
                        <div class="row">
                            <div class="hornav-block">
                                <div id="hornav" class="pull-right">
                                    <ul id="hornavmenu" class="nav navbar-nav">
                                        <li>
                                            <a href="index.php">Home</a>
                                        </li>
                                        <li>
                                           <a href="#Register" data-toggle="modal" class="btn btn-success btn-lg">Register</a>
                                        </li>
                                        <li>
											<?php echo (isset($_SESSION['username']))? '<a href="CSER/GUI/home.php" class="btn btn-info btn-lg">Dashboard</a>':'<a href="#login" data-toggle="modal" class="btn btn-info btn-lg">Log in</a>'; ?>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- End Top Menu -->
						<div class="container">
							<div class="row">
								<div class="page-header text-center">
									<h1>CSER</h1>
								</div>
							</div>
							<div class="row">
								<div class="col-md-10 col-md-offset-1">
									<img src="assets/img/logo3.png" class="center-block" height="200">
									<h2>Greetings,</h2>
									<p>This site was built for the examinees of Civil Service</p>
									<p>By:</p>
									<p>Christian Joseph Aquino</p>
									<p>Genesis Aron Medina</p>
									<p>Manuel I. Ponan</p>
									<p>Peter Andrew Quimson</p>
								</div>
							</div>
						</div>
      		</div>

				</div>
			</div>
	</div>
<!-- Modal content Login-->
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<a href="index.php"><button type="button" class="close" >&times;</button></a>
				<h2 class="modal-title" style="text-align:center;">Login</h2>
			</div>
			<div class="modal-body">
			<form class="signup-page" action="" method="post">
				<div class="login-header margin-bottom-30">
				<h2>Login to your account</h2>
				</div>
				<div class="input-group margin-bottom-20">
				<span class="input-group-addon">
					<i class="fa fa-user"></i>
				</span>
					<input autofocus placeholder="email" class="form-control" type="email" name="email" id="email" required/>
				</div>
				<div class="input-group margin-bottom-20">
				<span class="input-group-addon">
				<i class="fa fa-lock"></i>
				</span>
				<input placeholder="password" class="form-control" type="password" name="pw" id="pw" required/>
				</div>
				<input class="btn btn-primary" type="submit" value="LOG IN" name="login" />
			</form>
		</div>
	</div></div></div>

<?php include('signupModal.php'); ?>
<script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/js/scripts.js"></script>
<!-- Isotope - Portfolio Sorting -->
<script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
<!-- Mobile Menu - Slicknav -->
<script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
<!-- Animate on Scroll-->
<script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
<!-- Modernizr -->
<script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
<!-- End JS -->
</body>
</html>
