<%@page import="com.JDBC.StudentProfileJDBC.StudentProfileDAO"%>
<%@page import="java.util.ArrayList"%>
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
    <link href="css/dashboard.css" rel="stylesheet">
    
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
 					<span>TEST</span>
 					</a>
 					<ul class="collapse collapseable" id="post">
 						<li><a href="takequiz.jsp">QUIZ</a></li>
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
 			
 			 <%
       		 ArrayList<StudentProfileDAO> list=(ArrayList<StudentProfileDAO>)request.getAttribute("StudentData");
        		for(StudentProfileDAO studObj: list){
        	%>
       
			<div class=" container">       
 				<center><h2>Your Profile <%=session.getAttribute("userName") %></h2></center>
 				
 				<br>
 				<hr>
 				
 				
 				
 				<div class="row">
 					<div class="col-lg-4">
 						<div>NAME</div>
 						<div>SEX</div>
 						<div>FATHER NAME</div>
 						<div>AGE</div>
 						<div>DATE OF BIRTH</div>
 						<div>ROLL NUMBER</div>
 						<div>SESSION</div>
 						<div>BRANCH</div>
 						<div>PASSWORD</div>
 					</div>
 					
 					<div class="col-lg-8">
 						<div>:<%=studObj.getName() %></div>
	 					<div>:<%=studObj.getSex() %></div>
						<div>:<%=studObj.getFather_name() %></div>
						<div>:<%=studObj.getAge() %></div>
						<div>:<%=studObj.getDob() %></div>
						<div>:<%=studObj.getRollno() %></div>
						<div>:<%=studObj.getStdsession() %></div>
						<div>:<%=studObj.getBranch() %></div>
						<div>:<%=studObj.getPwd() %></div>	 
 					</div>
 				</div>
 				
 									
 				
 				</div>
 			</div>
 		</div>
 		<%
        }
        %>
 	</div>
 </div>

</body>
</html>