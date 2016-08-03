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
    <link href="css/section.css" rel="stylesheet">
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


<section id="bg-primary">
<div class="container-fluid">
    <div class="well">
        <form action="deletstudent" method="post">
            <div class="form-group">
            <label class="control-label col-sm-4" for="rollno"><h4>ENTER THE ROLLNO : </h4></label>

                <div class="col-sm-6">
                <input type="text"  class="form-control" id="rollno" name="rollno" placeholder="enter the rollno...">
                </div>

                <input type="button" class="btn btn-danger" value="DELETE">

            </div>
        </form>
    </div>
</div>

<div class="container-fluid text-center">
	<div class="well">
		<%
		if(request.getAttribute("Done")=="Yes"){
		%>
		<h3><%=request.getAttribute("Delete") %></h3>
		<%
		}
		if(request.getAttribute("Done")=="No"){
		%>
		<h3><%=request.getAttribute("Not") %></h3>
		<% 
		}
		%>
	</div>
	<a href="AdminStudent.jsp" class="btn btn-info">GO BACK</a>
</div>
</section>
</body>
</html>