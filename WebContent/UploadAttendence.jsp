<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/css/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style type="text/css">
.goForm{
	margin-top: 100px;
	margin-right: 60px;
}
</style>
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

<br><br>
<div class="container-fluid text-center">
	<div class="well">
		<h1>UPLOAD ATTENDENCE</h1>
	</div>
</div>
<div class="form-horizontal goForm">
<form action="GetAttendence" method="post">
<div class="container text-center">
	<div class="row">
		<div class="well col-lg-6">
		<label>BRANCH:</label>
			<select name="branch">
				<option>--SELECT--</option>
				<option>COMPUTER SCIENCE AND ENGINEERING</option>
				<option>ELECTRONICS COMMUNICATION</option>
				<option>MECHANICAL ENGINEERING</option>
				<option>INFORMATION TECHNOLOGY</option>
			</select>
		</div>
		
		<div class="well col-lg-3">
		<label>SESSION:</label>
			<select name="session">
				<option>--SELECT--</option>
				<option>2012-2016</option>
				<option>2013-2017</option>
				<option>2014-2018</option>
				<option>2015-2019</option>
			</select>
		</div>
		
		<div class="col-lg-3">
			<button class="btn btn-primary">GO FOR UPLOAD</button>
		</div>
	</div>
</div>
</form>
</div>
</body>
</html>