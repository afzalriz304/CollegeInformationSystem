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
<nav class="navbar-inverse navbar-fixed-top navbarCustom">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="navbar-brand">COLLEGE INFORMATION SYSTEM</div>
        </div>
        <div class="navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="Teacher.jsp">HOME<span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="#">SETTING<span class="glyphicon glyphicon-cog"></span></a></li>
                <li><a href="#">LOGOUT<span class="glyphicon glyphicon-log-out"></span></a></li>
            </ul>
        </div>
    </div>
</nav>
<br>
<div class="container-fluid text-center">
    <div class="jumbotron">
        <h1>WELCOME TEACHER</h1>
        <br>
        <p>UPLOAD THE TEST</p>
    </div>
    
    <form action=Makequiz method="get">

<table>
<tr><td><h3>QUESTION:<input type="text" name="question"></h3></td></tr>
<tr><td><p>Option 1:<input type="text" name="option1"></p></td></tr>
<tr><td><p>Option 2:<input type="text" name="option2"></p></td></tr>
<tr><td><p>Option 3:<input type="text" name="option3"></p></td></tr>
<tr><td><p>Option 4:<input type="text" name="option4"></p></td></tr>
<tr><td><p>Answer:<select name="answer">
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		</select></p></td></tr>
</table>
<input type="submit" value="submit">
</form>
</div>


</body>
</html>