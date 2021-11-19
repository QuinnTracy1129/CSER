<!-- Modal content Login-->
<div class="modal fade" id="login" role="dialog">
  <div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <a href="index.php"><button type="button" class="close" >&times;</button></a>
      <h2 class="modal-title" style="text-align:center;">Login</h2>
    </div>
    <div class="modal-body">
    <form class="signup-page" action="" method="POST">
      <div class="login-header margin-bottom-30">
      <h2>Login to your account</h2>
      </div>
      <div class="input-group margin-bottom-20">
      <span class="input-group-addon">
        <i class="fa fa-user"></i>
      </span>
        <input autofocus placeholder="email" class="form-control" type="email" name="eadd" id="eadd" required/>
      </div>
      <div class="input-group margin-bottom-20">
      <span class="input-group-addon">
      <i class="fa fa-lock"></i>
      </span>
      <input placeholder="password" class="form-control" type="password" name="pw" id="pw" required/>
      </div>
      <input class="btn btn-blue" type="submit" value="LOG IN" name="login" />
    </form>
  </div>
</div>
</div>
</div>

<!-- Modal content signup-->
<div class="modal fade" id="Register" role="dialog">
<div class="modal-dialog modal-lg">
<div class="modal-content">
  <div class="modal-header">
    <a href="index.php"><button type="button" class="close" >&times;</button></a>
    <h2 class="modal-title" style="text-align:center;">Register a new account</h2>
  </div>
  <div class="modal-body" style="background:#000;">
    <div>
      <ul class="nav nav-tabs nav-justified" role="tablist">
        <li role="presentation" class="active"><a href="#user" aria-controls="user" role="tab" data-toggle="tab">USER</a></li>
      </ul>
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="user">
          <div class="row signup-page" style="padding-top: 30px; padding-bottom: 30px;">
            <form class="s" name="Reg" action="createUser.php" method="POST" enctype="multipart/form-data" data-parsley-validate>

                <div class="row" align="center">
                   <div id="blank_error" style="display:none;" style="">
                      <span class="blink_me" style="color:red;"><label id="blank_error_text"></label></span>
                  </div>
                </div>

              <div class="col-sm-12">

              <div class="col-sm-6 text-center">
                  <img src="CSER/img/announcement/person-icon.png" onError="this.src='CSER/img/announcement/person-icon.png';" id='Show_img0' height="100px"; width="100px" style="margin-top: 30px; margin-bottom: 50px;">
              </div>

              <div class="col-sm-6 text-center">
                  <input type="file" name="file" onchange="openFile(event,0)">
              </div>

            </div>

              <div class="col-sm-6">
                  <label>Username
                  <span class="color-red">*</span>
                  </label>
                  <input autofocus name="uname" class="form-control" type="text" maxlength="30" required data-parsley-required-message="Invalid Username">
                  <label>Password
                  <span class="color-red">*</span>
                  </label>
                  <input  name="pw" class="form-control" type="password"  required data-parsley-required-message="Invalid Password">
                  <label>Birthday
                  <span class="color-red">*</span>
                  </label>
                  <input class="form-control" type="date" name="DoB" required>
              </div>

              <div class="col-sm-6">
                  <label>Civil Status
                  <span class="color-red">*</span>
                  </label>
                  <select  class="form-control selcls"  name="civil" style="width:100%;font-size:18px;height:32;padding:3;">
                      <option value=""> --Select Status--  </option>
                      <option value="Single"> Single </option>
                      <option value="Married"> Married </option>
                  </select>

                  <label> Gender
                  <span class="color-red">*</span>
                  </label>
                  <select  class="form-control selcls"  name="gender" style="width:100%;font-size:18px;height:32;padding:3;">
                      <option value="gender"> --Select Gender-- </option>
                          <script type="text/javascript">
                                  var m=new Array("","Male","Female");
                                  for(i=1;i<=m.length-1;i++){
                                  document.write("<option value='"+i+"'>" + m[i] + "</option>");  }
                          </script></select>

                  <label>Email Address
                  <span class="color-red">*</span>
                  </label>
                  <input  name="eadd" class="form-control" type="email" required data-parsley-required-message="Invalid Email Address">
              </div>

              <div class="col-sm-4">
                  <label>First Name</label>
                  <input  name="fname" class="form-control" type="text" maxlength="30" required data-parsley-required-message="Invalid First Name">
              </div>

              <div class="col-sm-4">
                  <label>Middle Name</label>
                  <input  name="mname" class="form-control" type="text" maxlength="30">
              </div>

              <div class="col-sm-4">
                  <label>Last Name</label>
                  <input  name="lname" class="form-control" type="text" maxlength="30"  required data-parsley-required-message="Invalid Last Name">
              </div>

              <div class="col-sm-6">
                  <label>Contacts
                  <span class="color-red">*</span>
                  </label>
                  <input  name="contacts" class="form-control" type="number" maxlength="11" >
                  </div>
                  <div class="col-sm-6">
                  <label>Address
                  <span class="color-red">*</span>
                  </label>
                  <input  name="addr" class="form-control" type="text" >
              </div>

              <div class="col-sm-12 margin-top-30">
                <center><button class="btn btn-blue" name="submit" type="submit">Register</button></center>
              </div>
            </form>
          </div>
        </div>


    <!--Admin modal-->
        <div role="tabpanel" class="tab-pane" id="admin">
          <div class="row signup-page" style="padding-top: 30px; padding-bottom: 30px;">
          <form class="s" name="Reg" action="createAdmin.php" method="POST" enctype="multipart/form-data" data-parsley-validate>

              <div class="col-sm-12">

              <div class="col-sm-6 text-center">
                  <img src="CSER/img/announcement/person-icon.png" onError="this.src='CSER/img/announcement/person-icon.png';"  id='Show_img1' height="100px"; width="100px" style="margin-top: 30px; margin-bottom: 50px;">
              </div>

              <div class="col-sm-6 text-center">
                  <input type="file" name="file" onchange="openFile(event,1)">
              </div>

            </div>

              <div class="col-sm-6">
              <label>Admin Username
              <span class="color-red">*</span>
              </label>
              <input autofocus name="uname" class="form-control" type="text" required data-parsley-required-message="Invalid Username">
              <label>Admin Password
              <span class="color-red">*</span>
              </label>
              <input  name="pw" class="form-control" type="password" required data-parsley-required-message="Invalid Password">
              <label>Re-enter Password
              <span class="color-red">*</span>
              </label>
              <input name="rpw" class="form-control" type="password" required>
              </div>

              <div class="col-sm-6">
              <label>Email Address
              <span class="color-red">*</span>
              </label>
              <input  name="eadd" class="form-control" type="email" required data-parsley-required-message="Invalid Email Address">

              <label> Gender
              <span class="color-red">*</span>
              </label>
              <select  class="form-control selcls"  name="gender" style="width:100%;font-size:18px;height:32;padding:3;">
                  <option value="gender">  </option>
                      <script type="text/javascript">
                              var m=new Array("","Male","Female");
                              for(i=1;i<=m.length-1;i++){
                              document.write("<option value='"+i+"'>" + m[i] + "</option>");  }
                      </script></select>

              <label>Birthday
              <span class="color-red">*</span>
              </label>
              <input name="DoB" class="form-control" type="date">
              </div>

              <div class="col-sm-4">
              <label>First Name</label>
              <input  name="fname" class="form-control" type="text" required data-parsley-required-message="Invalid First Name">
              </div>
              <div class="col-sm-4">
              <label>Middle Name</label>
              <input  name="mname" class="form-control" type="text">
              </div>
              <div class="col-sm-4">
              <label>Last Name</label>
              <input  name="lname" class="form-control" type="text" required data-parsley-required-message="Invalid Last Name">
              </div>

              <div class="col-sm-6">
              <label>Enter Code</label>
              <input  name="code" class="form-control" type="password" required data-parsley-required-message="Invalid Code">
              <input type="hidden" name="atype" value="1">
              </div>

              <div class="col-sm-6">
              <label>Contacts</label>
              <input  name="contacts" class="form-control" type="number" >
              </div>

              <div class="col-sm-12 margin-top-30">
                <center><button class="btn btn-blue" type="submit" name="create-admin">Register</button></center>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
    </div>
</div>
</div>
