<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
 				
 				String rollno=(String)session.getAttribute("rollno");
 				Class.forName("com.mysql.jdbc.Driver");
 				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
 				
 				String sql="select total,attnd from student_acedemics where roll_no=?";
 				PreparedStatement pstmt=con.prepareStatement(sql);
 				pstmt.setString(1, rollno);
 				ResultSet rs=pstmt.executeQuery();
 				while(rs.next()){
 					double totalDB=Integer.parseInt(rs.getString("total"));
 					double attndDB=Integer.parseInt(rs.getString("attnd"));
 					System.out.println(totalDB);
 					System.out.println(attndDB);
 				
 					double attend=attndDB/totalDB *100;
 					System.out.println(attend);
 					session.setAttribute("attend", attend);
 				}
 				%>
 				<div class="container text-center">
 				<div class="well">
 				<h1>Your Attendence is <%=session.getAttribute("attend") %></h1>
 				</div>
 				</div>
 			</div>
 		</div>
 	</div>
 </div>
       
       
</body>
</html>