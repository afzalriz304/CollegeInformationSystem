<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
   <!--  <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
    <link href="css/Index.css" rel="stylesheet">
<style type="text/css">
	.form-group{
	color: #080808;
}
</style>

</head>
<body>

<!--Navbar starts here-->


<div class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="navbar-brand">COLLEGE INFORMATION SYSTEM</div>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a class="active" href="Index.jsp">HOME</a></li>
                <li><a href="#contact">CONTACT</a></li>
                <li><a href="#services">ABOUT</a></li>
            </ul>
        </div>
    </div>

</div>

<header>
    <div class="header-content">
        <div class="jumbotron">
        <h1>CONNECT WITH INFORMATION </h1>
        </div>
        <hr>
        <a href="#services"  class="btn btn-primary btn-lg">EXPLORE</a>
        <div class="header-content-inner">
        <h2 class="text-muted">Here</h2>
        <h2 class="text-muted"> We provide the Plateform</h2>
        <h2 class="text-muted">for the information and Data to the </h2>
        <h1 class="text-muted">Students and Teachers</h1>

            <button class="btn btn-primary btn-lg studentBTN" data-toggle="modal" data-target="#StudentModal">STUDENT</button>
            <div class="modal fade" id="StudentModal" role="form">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h3 class="admin" align="left">STUDENT LOGIN</h3>
                    <button type="button" class="close" data-dismiss="modal">close&times;</button>
                </div>

                <div class="modal-body">
                    <form action="studentlogin" method="post" class="form-horizontal center-form">


                        <div class="form-group">
                            <label class="control-label col-sm-4" for="ADMINID">STUDENT ROLLNO:</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="ADMINID" name="rollno" placeholder="Student Rollno">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-4" for="PASSKEY">PASSWORD:</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="PASSKEY" name="pwd" placeholder="Password">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-info">LOGIN</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <a href="">Need Help..?</a>
                </div>
            </div>
        </div>
    </div>            
            
            
                    <button type="button" class="btn btn-primary btn-lg teacherBTN " data-toggle="modal" data-target="#TeacherModal">TEACHER</button>
    </div>
    <div class="modal fade" id="TeacherModal" role="form">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h3 align="left">PLEASE LOGIN</h3>
                    <button type="button" class="close" data-dismiss="modal">close&times;</button>
                </div>

                <div class="modal-body">
                    <form action="teacherlogin" method="post" class="form-horizontal center-form">


                        <div class="form-group">
                            <label class="control-label col-sm-3" for="ADMINID">TEACHER ID:</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="ADMINID" name="id" placeholder="TEACHER ID">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-3" for="PASSKEY">PASSWORD:</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="PASSKEY" name="pwd" placeholder="Password">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-info">LOGIN</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <a href="">Need Help..?</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</header>

<section class="bg-primary">
    <div class="container-fluid">
        <h2>ADMIN CONTROL</h2>
        <span class="glyphicon glyphicon-wrench admin"></span>
        <hr class="light">
        <button class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">LOGIN</button>
        
        
         <div class="modal fade" id="myModal" role="form">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                <h3 class="admin" align="left">ADMIN LOGIN</h3>
                    <button type="button" class="close" data-dismiss="modal">close&times;</button>
                </div>

                <div class="modal-body">
                    <form action="adminlogin" method="post" class="form-horizontal center-form">


                        <div class="form-group">
                            <label class="control-label col-sm-2" for="ADMINID">ADMIN ID:</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" id="ADMINID" name="adminid" placeholder="ADMIN ID">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-2" for="PASSKEY">PASSWORD:</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control" id="PASSKEY" name="passkey" placeholder="Password">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-info">LOGIN</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <a href="">Need Help..?</a>
                </div>
            </div>
        </div>
    </div>
</div>
        
        
        
        
        
        <h5>Information Regulated by Admin</h5>
    </div>
</section>

<section id="services">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2 class="light1">WE PROVIDED</h2>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-3 text-center">
            <span class="glyphicon glyphicon-info-sign"></span>
            <h3>Info</h3>
            <p class="text-muted">We provide information</p>
        </div>

        <div class="col-lg-3 text-center">
            <span class="glyphicon glyphicon-leaf"></span>
            <h3>Contact</h3>
            <p class="text-muted">We contact you</p>
        </div>

        <div class="col-lg-3 text-center">
            <span class="glyphicon glyphicon-plane"></span>
            <h3>Services</h3>
            <p class="text-muted">We provide services</p>
        </div>

        <div class="col-lg-3 text-center">
            <span class="glyphicon glyphicon-lamp"></span>
            <h3>Control</h3>
            <p class="text-muted">We control the data</p>
        </div>


    </div>
</section>

<section>
    <div class="container-fluid">

        <div class="row no-gutter">
            <div class="col-lg-4 portfolio-box">
                <img src="images/1.jpg">
            </div>

            <div class="col-lg-4 portfolio-box">
                <img src="images/2.jpg">    
            </div>

            <div class="col-lg-4 portfolio-box">
                <img src="images/3.jpg">
            </div>
            <div class="col-lg-4 portfolio-box">
                <img src="images/4.jpg">
            </div>

            <div class="col-lg-4 portfolio-box">
                <img src="images/5.jpg">
            </div>

            <div class="col-lg-4 portfolio-box">
                <img src="images/6.jpg">
            </div>
        </div>

    </div>
</section>

<section id="contact">
    <div class="container">
        <div class="row">
            <div class="text-center">
                <h2>Get In Touch With Our Team</h2>
                <hr>
                <p>For Any query and Development of new project contact our team and we Will Contact you..!</p>
            </div>

            <div class="col-lg-6 text-center">
                <span class="glyphicon glyphicon-earphone"></span>
                <br>
                <p>7533040646</p>
            </div>

            <div class="col-lg-6 text-center">
                <span class="glyphicon glyphicon-inbox"></span>
                <br>
                <p>afzalriz304@gmail.com</p>
            </div>
        </div>
    </div>
</section>
<footer class="panel-footer text-center">Created By G2</footer>
</body>
</html>