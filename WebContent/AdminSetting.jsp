<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/css/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <!-- <link href="css/StudentDashboard.css" rel="stylesheet"> -->
    <link href="css/dashboard.css" rel="stylesheet">
    
    <script type="text/javascript">
    	function validation() {
			var newpwd=document.getElementById("new").value;
			var confirmnew=document.getElementById("Confirmnew").value;
			if(newpwd!=confirmnew){
				document.getElementById("incorrect").innerHTML="Password is not matched";
			}
			if(newpwd==confirmnew){
				document.getElementById("incorrect").innerHTML=" ";
			}
		}
    </script>
</head>
<body>

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
	%>
	<jsp:forward page="Index.jsp"></jsp:forward>
	<% 
}
%>

			<nav class="navbar-default">
 					<div class="navbar-header">
 						<div class="navbar-brand">STUDENT DASHBOARD</div>
 					</div>
 				
 				
 					<div class="navbar-collapse">
 						<ul class="nav navbar-nav navbar-right">
 							<li><a href="#">HOME</a></li>
 							<li><a href="#">ABOUT</a></li>
 							<li><a href="#">SERVICES</a></li>
 						</ul>
 					</div>
 				
 			</nav>

	
 			<div class="container">
 				<div class="well">
 				<form action="ChangePwdAdmin" method="post">
 					<div class="form-horizontal">
 					<div class="row">
 					
 						<div class="col-lg-4">
 						<label>Old Password:</label>
 						</div>
 						<div class="col-lg-8">
 						<input type="password" id=""  name="" placeholder="old password"><br><br>
 						</div>
 					</div>
 					
 						<div class="row">
 					
 						<div class="col-lg-4">
 						<label>New Password:</label>
 						</div>
 						<div class="col-lg-8">
 						<input type="password" id="new" name="newpwd" placeholder="New password"><br><br>
 						</div>
 					</div>
 					
 						<div class="row">
 					
 						<div class="col-lg-4">
 						<label>Confirm New Password:</label>
 						</div>
 						<div class="col-lg-8">
 						<input type="password" id="Confirmnew"  name="confirmNewpwd"  placeholder="New password" onkeyup="validation()"><span style="color: red;" id="incorrect"></span><br><br>
 						</div>
 					</div>
 					
 					<input type="submit" value="Change Password" class="btn btn-info">
 					</div>
 					</form>
 				</div>
 			
 			</div>
 			
 			</div>
 		</div>
 	</div>
 </div>
</body>
</html>