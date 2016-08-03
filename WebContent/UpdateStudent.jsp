<%@page import="com.UpdateStudent.StudentDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
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
<form action="UpdateStudent" method="get" id="myform">
<div class="container-fluid text-center" >
	<div class="input-control">
	<label class="control-label col-md-3 text-center">Enter the Roll Number:</label>
	<div class="col-md-6">
	<input type="text" class="form-control" name="rollno">
	</div>
	<input type="submit" class="btn btn-primary" value="SUBMIT">
	</div>
</div>
</form>

<%
ArrayList<StudentDAO> list=(ArrayList<StudentDAO>)request.getAttribute("list");
if(list!=null){
for(StudentDAO obj: list){
	
%>
<div class="container-fluid">
	<div class="well">
		<form action="UpdateStudentData" method="post">
			<fieldset>
    <legend>STUDENT'S REGISTRATION FORM</legend>
    <div class="form-group">
        <label class="control-label col-sm-4" for="Name">Name of the Student:</label>
        <div class="col-sm-6">
             Name is : <%= obj.getName() %>
            <input type="text" class="form-control" id="Name" name="name" placeholder="Full Name" value="<%=obj.getName() %>">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-4" for="Father">Father's Name:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="Father" name="father" placeholder="Father's Name" value="<%=obj.getFather_name() %>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="DOB">Date of Birth</label>
        <div class="col-sm-6">
            <input type="text"  class="form-control" id="DOB" name="dob" placeholder="DATE OF BIRTH" value="<%=obj.getDob() %>">
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
            <input type="email" class="form-control" id="EMAIL" name="email" placeholder="EMAIL ID" value="<%=obj.getEmail() %>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="ROLLNO">ROLL NUMBER:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="ROLLNO" name="rollno" value="<%=obj.getRollno() %>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="AGE">AGE:</label>
        <div class="col-sm-6">
            <input type="number" min="15" max="30" class="form-control" id="AGE" name="age" placeholder="age" value="<%=obj.getAge() %>">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="BRANCH">BRANCH:</label>
        <div class="col-sm-6">
            <select class="form-control" id="BRANCH" name="branch" value="<%=obj.getBranch() %>">
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
        <label class="control-label col-sm-4" for="SESSION">SESSION:</label>
        <div class="col-sm-6">
            <select class="form-control" id="SESSION" name="session" value="<%=obj.getStdsession() %>">
                <option>2012-2016</option>
                <option>2013-2017</option>
                <option>2014-2018</option>
                <option>2015-2019</option>
                <option>2016-2020</option>
                <option>2017-2021</option>

            </select>
        </div>
    </div>
    <br>
    <br>
    <div class="form-group">
        <div class="col-sm-offset-6 col-sm-10">
            <button type="submit" class="btn btn-primary">UPDATE<span class="glyphicon glyphicon-ok"></span></button>
 		</div>
 	</div>
 	</fieldset>
		</form>
	</div>
	<%
}
}
	%>
</div>

<div class="container">
	<div class="well">
		<%
		if(session.getAttribute("null")=="null"){
		%>
			<h3><%=session.getAttribute("Result") %></h3>
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
</body>
</html>