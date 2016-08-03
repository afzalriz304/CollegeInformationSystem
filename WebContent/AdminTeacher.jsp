<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>

    <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/css/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link href="css/AdminStudent.css" rel="stylesheet">
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
                <li class="active"><a href="Admin.jsp">HOME<span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="AdminSetting.jsp">SETTING<span class="glyphicon glyphicon-cog"></span></a></li>
                <li><a href="AdminLogout.jsp">LOGOUT<span class="glyphicon glyphicon-log-out"></span></a></li>
            </ul>
        </div>
    </div>
</nav>
<br>



<div class="container-fluid text-center rowCss">
    <h1 class="well-lg">CHOOSE A OPERATION</h1>
    <div class="row">
        <div class="col-sm-3">
            <a  href="RegisterTeacher.jsp" class="btn btn-lg btn-default">ADD A TEACHER</a><br>
            <p>(Add the Teacher Data...)</p>
        </div>

        <div class="col-sm-3">
            <a href="DeleteTeacher.jsp" class="btn btn-lg btn-danger">DELETE TEACHER</a><br>
            <p>(Delete the Teacher Data)</p>
        </div>
        
        <div class="col-sm-3">
            <a href="TeacherRetrieve" class="btn btn-lg btn-primary">VIEW TEACHERS</a><br>
            <p>(View the Teacher Data)</p>
        </div>

        <div class="col-sm-3">
            <a href="UpdateTeacher.jsp" class="btn btn-lg btn-info">UPDATE DATA</a><br>
            <p>(Update the Teacher data)</p>
        </div>
    </div>
</div>
</body>
</html>