<%@page import="com.UpdateTeacher.TeacherDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style type="text/css">
    	#myform{
    		margin-top: 100px;
    		margin-bottom: 50px;
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
<form action="UpdateTeacher" method="get" id="myform">
<div class="container-fluid text-center" >
	<div class="input-control">
	<label class="control-label col-md-3 text-center">Enter the ID Number:</label>
	<div class="col-md-6">
	<input type="text" class="form-control" name="id">
	</div>
	<input type="submit" class="btn btn-primary" value="SUBMIT">
	</div>
</div>
</form>

<div class="container">
	<div class="well">
		<%
		if(request.getAttribute("null")=="null"){
		%>
			<h3><%=request.getAttribute("Result") %></h3>
		<%
		}
		%>
		<%
		if(request.getAttribute("Done")=="Yes"){
		%>
			<h3><%=request.getAttribute("Update") %></h3>
		<%
		}
		%>
	</div>
</div>


<%
ArrayList<TeacherDAO> list=(ArrayList<TeacherDAO>)request.getAttribute("list");
if(list!=null){
for(TeacherDAO obj: list){
	
%>
<div class="container-fluid">
	<div class="well">

<form action="TeacherUpdateData" method="post" class="form-horizontal center-form myForm" name="registerForm">
<fieldset>
    <legend>STUDENT'S REGISTRATION FORM</legend>
    <div class="form-group">
        <label class="control-label col-sm-4" for="Name">Name of the Teacher:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="Name" name="name" placeholder="Full Name" value="<%=obj.getName()%>">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-4" for="Father">Father's Name:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="Father" name="father" placeholder="Father's Name" value="<%=obj.getFather_name()%>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="DOB">Date of Birth</label>
        <div class="col-sm-6">
            <input type="text"  class="form-control" id="DOB" name="dob" placeholder="DATE OF BIRTH" value="<%=obj.getDob()%>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="SEX">GENDER:</label>
        <div class="col-sm-6">
            <label class="control-label col-sm-6">MALE</label>
            <input type="radio" class="form-control" id="male" name="sex" value="MALE">
            <label class="control-label col-sm-6">FEMALE</label>
            <input type="radio" class="form-control" id="female" name="sex" value="FEMALE">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="EMAIL">EMAIL ID:</label>
        <div class="col-sm-6">
            <input type="email" class="form-control" id="EMAIL" name="email" placeholder="EMAIL ID" value="<%=obj.getEmail()%>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="ROLLNO">ID NUMBER:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="ROLLNO" name="id" placeholder="ID NUMBER" value="<%=obj.getId()%>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="AGE">AGE:</label>
        <div class="col-sm-6">
            <input type="number" min="20" max="60" class="form-control" id="AGE" name="age" placeholder="age" value="<%=obj.getAge()%>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="BRANCH">DEPARTMENT:</label>
        <div class="col-sm-6">
            <select class="form-control" id="BRANCH" name="department" value="<%=obj.getDepartment()%>">
                <option>COMPUTER SCIENCE AND ENGINEERING</option>
                <option>MECHANICAL ENGINEERING</option>
                <option>INFORMATION TECHNOLOGY</option>
                <option>ELECTRONICS ENGINEERING</option>
                <option>ELECTRICAL ENGINEERING</option>
                <option>CIVIL ENGINEERING</option>

            </select>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="SESSION">JOINING:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="SESSION" name="joining" value="<%=obj.getJoining()%>">
        </div>
    </div>
    
<br>
<br>
    <div class="form-group">
        <div class="col-sm-offset-6 col-sm-10">
            <button type="submit" class="btn btn-primary">UPDATE<span class="glyphicon glyphicon-ok"></span></button>
        </div>
    </div>
<!--
    <input type="reset">
    <input type="submit">-->
</fieldset>
</form>
</div>
</div>
	<%
}
}
	%>

</body>
</html>