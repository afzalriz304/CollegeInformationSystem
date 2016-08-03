<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <link href="bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.6-dist/css/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js" type="application/javascript"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="application/javascript"></script>
    <link href="LoginStudent.css" rel="stylesheet">
    <script src="js/RegisterStudent.js" type="application/javascript"></script>
    <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.10.2.js" type="application/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js" type="application/javascript"></script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <script src="js/GeneratePwd.js" type="application/javascript"></script>
    
    <script type="text/javascript">
var request;
function findname(){
	var name=document.registerForm.id.value;
	var url="findID.jsp?val="+name;
	//var url="findname.jsp?val="+v;
	
	if(window.XMLHttpRequest){
		request=new XMLHttpRequest();
	}
	else if(window.ActiveXObject){
		request=new ActiveXObject("Microsoft.XMLHTTP");
	}
	try{
		request.onreadystatechange=getInfo;
		request.open("GET",url,true);
		request.send();
	}catch(e){
		alert("unable to connect...");
	}
	
}
function getInfo(){
	if(request.readyState==4){
		var val=request.responseText;
		document.getElementById("warning").innerHTML=val;
	}
}
</script>
    
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
<%-- <jsp:include page="Link.jsp"></jsp:include>
<br>
<br>
 --%>
 <div class="container-fluid">
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
 
<form action="TeacherRegister" method="post" class="form-horizontal center-form myForm" name="registerForm">
<fieldset>
    <legend>STUDENT'S REGISTRATION FORM</legend>
    <div class="form-group">
        <label class="control-label col-sm-4" for="Name">Name of the Teacher:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="Name" name="name" placeholder="Full Name">
        </div>
    </div>


    <div class="form-group">
        <label class="control-label col-sm-4" for="Father">Father's Name:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="Father" name="father" placeholder="Father's Name">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="DOB">Date of Birth</label>
        <div class="col-sm-6">
            <input type="text"  class="form-control" id="DOB" name="dob" placeholder="DATE OF BIRTH">
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
            <input type="email" class="form-control" id="EMAIL" name="email" placeholder="EMAIL ID">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="ROLLNO">ID NUMBER:</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="ROLLNO" name="id" placeholder="ID NUMBER" onkeyup="findname()"><span id="warning"></span>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="AGE">AGE:</label>
        <div class="col-sm-6">
            <input type="number" min="20" max="60" class="form-control" id="AGE" name="age" placeholder="age">
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-4" for="BRANCH">DEPARTMENT:</label>
        <div class="col-sm-6">
            <select class="form-control" id="BRANCH" name="department">
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
        	<input type="text" class="form-control" id="SESSION" name="joining">    
        </div>
    </div>
    
    <div class="form-group">
    	<label class="control-label col-sm-4" for="pwd">PASSWORD:</label>
        <div class="col-sm-6">
        	<input type="text" id="pwd" name="pwd">
        	<input type="button" id="generate" value="GENERATE PASSWORD" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-6 col-sm-10">
            <button type="reset" class="btn btn-default">RESET<span class="glyphicon glyphicon-refresh"></span></button>
            <button type="submit" class="btn btn-primary">SUBMIT<span class="glyphicon glyphicon-ok"></span></button>
        </div>
    </div>
<!--
    <input type="reset">
    <input type="submit">-->
</fieldset>
</form>
</div>
</body>
</html>