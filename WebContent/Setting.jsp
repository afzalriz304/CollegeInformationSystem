<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta charset="utf-8">
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
 							<li><a href="StudentDashboard.jsp">HOME</a></li>
 							<li><a href="#">ABOUT</a></li>
 							<li><a href="#">SERVICES</a></li>
 						</ul>
 					</div>
 				
 			</nav>

 <div class="container-fluid display-table">
 	<div class="row display-table-row">
 		<div class="col-md-2 display-table-cell" id="side-menu">
 			<h1><%=session.getAttribute("userName") %></h1>
 			<ul>
 				<li class="link">
 					<a href="StudentDashboard.jsp">
 					<span class="glyphicon glyphicon-th"></span>
 					<span>Dashboard</span>
 					</a>
 				</li>
 				
 				<li class="link">
 					<a href="studentprofile">
 					<span class="glyphicon glyphicon-user"></span>
 					<span>Profile</span>
 					</a>
 				</li>
 				
 				<li class="link">
 					<a href="ViewAttendence.jsp">
 					<span class="glyphicon glyphicon-stats"></span>
 					<span>View Attendence</span>
 					</a>
 				</li>
 				
 				<li class="link">
 					<a href="#post" data-toggle="collapse" aria-control="post">
 					<span class="glyphicon glyphicon-stats"></span>
 					<span>Result</span>
 					</a>
 					<ul class="collapse collapseable" id="post">
 						<li><a href="">Sessional</a></li>
 						<li><a href="">Semester</a></li>
 					</ul>
 				</li>
 				
 				<li class="link">
 					<a href="Setting.jsp">
 					<span class="glyphicon glyphicon-wrench"></span>
 					<span>Settings</span>
 					</a>
 				</li>
 				
 				<li class="link">
 					<a href="StudentLogout.jsp">
 					<span class="glyphicon glyphicon-off"></span>
 					<span>Logout</span>
 					</a>
 				</li>
 			</ul>
 		</div>
 		
 		<div class="col-md-10 box display-table-cell">
 			<div class="row">
 			
 			<div class="container">
 				<div class="well">
 				<form action="ChangePwd" method="post">
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