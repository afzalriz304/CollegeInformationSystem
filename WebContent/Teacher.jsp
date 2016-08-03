<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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

			<nav class="navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="navbar-brand">COLLEGE INFORMATION SYSTEM</div>
        </div>
        <div class="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="Teacher.jsp">HOME<span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">SERVICES</a></li>
            </ul>
        </div>
    </div>
</nav>

 <div class="container-fluid display-table">
 	<div class="row display-table-row">
 		<div class="col-md-2 display-table-cell" id="side-menu">
 			<h1><%=session.getAttribute("userName") %></h1>
 			<ul>
 				<li class="link">
 					<a href="Teacher.jsp">
 					<span class="glyphicon glyphicon-th"></span>
 					<span>Dashboard</span>
 					</a>
 				</li>
 				
 				
 				<li class="link">
 					<a href="UploadAttendence.jsp">
 					<span class="glyphicon glyphicon-stats"></span>
 					<span>Upload Attendence</span>
 					</a>
 				</li>
 				
 				<li class="link">
 					<a href="TeacherUploads.jsp">
 					<span class="glyphicon glyphicon-stats"></span>
 					<span>Upload TEST</span>
 					</a>
 				</li>
 				
 				<!-- <li class="link">
 					<a href="#post" data-toggle="collapse" aria-control="post">
 					<span class="glyphicon glyphicon-stats"></span>
 					<span>Result</span>
 					</a>
 					<ul class="collapse collapseable" id="post">
 						<li><a href="">Sessional</a></li>
 						<li><a href="">Semester</a></li>
 					</ul>
 				</li> -->
 				
 				<li class="link">
 					<a href="TeacherSetting.jsp">
 					<span class="glyphicon glyphicon-wrench"></span>
 					<span>Settings</span>
 					</a>
 				</li>
 				
 				<li class="link">
 					<a href="Teacherlogout.jsp">
 					<span class="glyphicon glyphicon-off"></span>
 					<span>Logout</span>
 					</a>
 				</li>
 			</ul>
 		</div>
 		
 		<div class="col-md-10 box display-table-cell">
 		
 		<section id="booksearch" class="text-center">
 		<form action="SearchBookTeacher" method="get">
 			<div class="input-group">
 				<input type="text" placeholder="Search the books" class="search-box form-control" name="book">
 				<div class="input-group-btn">
 					<button type="button" class="btn btn-default btn-lg">
  						<span class="glyphicon glyphicon-search" aria-hidden="true"></span> SEARCH
					</button>
 				</div>
 			</div>
 		</form>
 		</section>
 		
 		
 		
 		
 			<div class="row">
 			
 			<section class="info">
 				<div class="col-md-3 text-center">
 					<span class="glyphicon glyphicon-info-sign"></span>
 					<p class="text-muted">You are provided with Information</p>
 				</div>
 			
 				<div class="col-md-3 text-center">
 					<span class="glyphicon glyphicon-alert"></span>
 					<p class="text-muted">Your Account is secured</p>
 				</div>
 			
 				<div class="col-md-3 text-center">
 					<span class="glyphicon glyphicon-bell"></span>
 					<p class="text-muted">You gets alert by our notification</p>
 				</div>
 			
 				<div class="col-md-3 text-center">
 					<span class="glyphicon glyphicon-briefcase"></span>
 					<p class="text-muted">You Data is Secured</p>
 				</div>
 			
 			</section>	
 			</div>
 			
 			<section class="feedback text-center">
 				<div class="container-fluid">
        		<h2>SUBMIT YOUR FEEDBACK TO US</h2>
        		<a href="" class="btn btn-default">FEEDBACK</a>
        			
    			</div>
 			</section>
 			
 		</div>
 	</div>
 </div>
       
       
</body>


</body>
</html>