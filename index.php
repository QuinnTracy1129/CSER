<?php
session_start();
$_SESSION['betaNo'] = 1;
$_SESSION['score'] = 0;
$_SESSION['mistake'] = 0;
include ("Connector/connect.php");

	if(isset($_POST['login']))	{
		$eadd = $_POST['eadd'];
		$pw = $_POST['pw'];
		$eadd = stripslashes($eadd);
		$eadd = mysqli_real_escape_string($conn,$eadd);
		$pw = stripslashes($pw);
		$pw = mysqli_real_escape_string($conn,$pw);

		$query = "SELECT *,TIMESTAMPDIFF(Year,`DoB`,NOW()) AS Age
							FROM users
							WHERE eadd='$eadd' and pw='".md5($pw)."'";
		$qry = mysqli_query($conn,$query);


		if(!$qry)
			die("Could not connect to database.".mysqli_error());
		else
		{
			$numrow = mysqli_num_rows($qry);
			if($numrow>0){
				while($row = mysqli_fetch_array($qry)){
							$verification = $row['status'];
							if($verification == 0){

								$_SESSION['id']=$row["id"];
								$_SESSION['eadd']=$eadd;
								$uname=$row["uname"];
								$_SESSION['username']=$uname;
								$_SESSION['pw']=$row["pw"];
								$_SESSION['atype']=$row[8];
								$_SESSION['img']=$row["img"];
								$_SESSION['Age']=$row["Age"];
								$_SESSION['status']=$row["status"];
								$_SESSION['sex']=$row['gender'];

								$UserType=$row[8]=1?"Admin":"user";

								header("location:CSER/GUI/home.php");

								@$file = fopen("userList.txt","a");
								@$mydate=getdate(date("U"));
								fwrite($file,$mydate[month]." ".$mydate[mday].",".$mydate[year]." ".$mydate[hours].":".$mydate[minutes].":".$mydate[seconds]);
								fwrite($file,$UserType." ".$uname." is Logged In"."\r\n");
								fclose($file);
							}else{
								echo("<script type='text/javascript'> alert ('Your account is not yet activated.')</script>");
							}
				}
			}else{
				echo("<script type='text/javascript'> alert ('Email and Password did not match')</script>");
				}
			}
	}
?>
<!DOCTYPE html>
<html>
    <!--<![endif]-->
    <head>
        <title>CSER</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
				<link rel="stylesheet" href="assets/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/reg_check.css" rel="stylesheet">
<link rel="shortcut icon" type="image/png" href="assets/img/logo3.png">

	  <script>
	var openFile = function(event,x) {
    var input = event.target;

    var reader = new FileReader();
	  reader.onload = function(){
      var dataURL = reader.result;
      var output = document.getElementById('Show_img'+x);
      output.src = dataURL;
    };
    reader.readAsDataURL(input.files[0]);
  };</script>
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
																				<li>
											<?php echo (isset($_SESSION['username']))? '':'<a href="CSER/Exam/beta.php" class="btn btn-info btn-lg">Exam</a>'; ?>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- End Top Menu -->
                    </div>
                    <div class="container no-padding">
                        <!-- === END HEADER === -->
                        <!-- === BEGIN CONTENT === -->
                        <div class="row">
                            <!-- Carousel Slideshow -->
                            <div id="carousel-example" class="carousel slide" data-ride="carousel">


                                <!-- Carousel Images -->
                                <div class="carousel-inner">
                                    <div class="item active">
																			<div style="text-align: center; margin: 0 auto; width:500px;">
                                        <img src="assets/img/logo3.png">
																			</div>
                                    </div>
                                </div>
                                <!-- End Carousel Images -->

                            </div>
                            <!-- End Carousel Slideshow -->
                    <div class="container">
                        <div class="row text-center">
                            <!-- Main Article -->
                            <div class="col-md-6 margin-top-30">
								<img src="assets/img/mission.jpg" alt="mission" class="animate slideInLeft">
                                <p>
																	To offer superlative aid at the expressway of revolution, while leading the way
													 				for exam-oriented individuals.
												 				</p>
                            </div>
							<div class="col-md-6 margin-top-30">
                                <img src="assets/img/vision.jpg" alt="vision" class="animate slideInRight">
                                <p>
																	We create a positive domino effect in the educational world of truth, mastery,
																	and connection that increases excellence and fulfillment for all</p>
                            </div>
-                            <!-- End Main Article -->
                        </div>
                    </div>
                    <div class="container no-padding gridgallery">
                        <!-- Portfolio Header Text -->
                        <div class="row">
                            <div class="col-md-12 padding-vert-30">
                                <h2 class="item-title"></h2>
                            </div>
                        </div>
                        <!-- End Portfolio Header Text -->
                        <!-- Portfolio Footer Text -->
                        <div class="row">
                            <div class="col-12-md margin-bottom-30">

                            </div>
                        </div>
                        <!-- End Portfolio Footer Text -->
                        <!-- === END CONTENT === -->
                        <!-- === BEGIN FOOTER === -->
                    </div>
                    <div id="base" class="container padding-vert-30">
                        <div class="row">
                            <!-- Contact Details -->
                            <div class="col-md-3">
                                <h3 class="margin-bottom-10">Contact Details</h3>
                                <p>Aduas Centro, Clamonte st.
                                    <br />Cabanatuan City
                                    <br /> 0997 721 9941
                                    <br /> 0905 942 7731
                                </p>
                                <p>Email:
                                    christianjaquino124@gmail.com
                                    <br>
																		Website:<br>
                                  <span id="cser"> </span>
																	<script>
																			document.getElementById("cser").innerHTML=window.location.host;
																	</script>
                                </p>
                            </div>
                            <!-- End Contact Details -->
                            <!-- Sample Menu -->
                            <div class="col-md-3">
                                <h3 class="margin-bottom-10"></h3>
                                <ul class="menu">
                                    <li>
                                        <a class="fa-home" href="index.php">Home</a>
                                    </li>
                                    <li>
                                        <a class="fa-user" href="about.php">About Us</a>
                                    </li>
                                    <li>
                                        <a class="fa-pencil" href="#Register" data-toggle="modal">Register</a>
                                    </li>
									<li>
                                        <a class="fa-sign-in" href="#login" data-toggle="modal">Log in</a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <!-- End Sample Menu -->
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!-- Footer Menu -->
                    <div id="footermenu" class="container">
                        <div class="row">

                    <!-- End Footer Menu -->
                </div>
            </div>
            <div class="container padding-vert-30">
                <div class="row">
                    <div id="copyright">
                        <p>(c) 2018 CSER</p>
                    </div>
                </div>
            </div>
        </div>
	</div>
	</div>
	</div>
	</div>

<?php include('signupModal.php'); ?>
<!-- JS -->
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
<script type="text/javascript" src="assets/js/reg_check.js" type="text/javascript"></script>
</body>
</html>
