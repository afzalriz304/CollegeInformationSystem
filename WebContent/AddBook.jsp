<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
    <link href="css/Registration.css" rel="stylesheet">
</head>
<body>
<nav class="navbar-inverse navbar-fixed-top navbarCustom">
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

<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
	%>
	<jsp:forward page="Index.jsp"></jsp:forward>
	<% 
}
%>
<form action="Addbook" method="post">
<div class="container-fluid">
<div class="well">
	<h2>Add Books to the Library</h2>
	<div class="row">	
		<div class="col-lg-3 text-center">
			<label>Book Name:</label><input type="text" name="name">
		</div>
		
		<div class="col-lg-3 text-center">
			<label>Writer:</label><input type="text" name="writer">
		</div>
		
		<div class="col-lg-3 text-center">
			<label>Edition:</label><input type="text" name="edition">
		</div>
		
		<div class="col-lg-3 text-center">
			<input type="submit" class="btn btn-primary" value="Add">
		</div>
	</div>
</div>
</div>
</form>
<div class="container-fluid text-center">
	<div class="well">
		<%
		if(request.getAttribute("uploaded")=="true") {
		%>
		<h3><%=request.getAttribute("upload") %></h3>
		<%
		}
		%>
	</div>
</div>
</body>
</html>