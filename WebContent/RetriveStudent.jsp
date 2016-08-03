<%@page import="com.JDBC.StudentRetrieve.StudentRetrieveDAO"%>
<%@page import="java.util.ArrayList"%>
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

<%
ArrayList<StudentRetrieveDAO> list=(ArrayList<StudentRetrieveDAO>)request.getAttribute("StudentData");
%>

<div class="container-fluid">
    <div class="table-responsive">
    <table class="table">
        <thead>
        <tr>
        <th>ROLL NUMBER</th>
		<th>NAME</th>
		<th>SEX</th>
		<th>DEPARTMENT</th>
		<th>SESSION</th>
		</tr>
		

        </thead>
    
		<%
		for(StudentRetrieveDAO data:list){	
		%>
		
		<tbody>
		<tr>
		
		<td><%=data.getRollno() %>
		<td><%=data.getStudentname() %></td>
		<td><%=data.getSex() %>
		<td><%=data.getDepartment() %></td>
		<td><%=data.getStndsession() %></td>
		</tr>
		</tbody>
		<%
		}
		%>
		</table>
    </div>
</div>
</body>
</html>