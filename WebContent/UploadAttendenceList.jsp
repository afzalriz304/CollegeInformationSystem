<%@page import="com.getAttendence.StudentDAO"%>
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
    <script src="bootstrap-3.3.6-dist/css/js/bootstrap.min.js" type="application/javascript">
    </script>
    <script src="js/jquery-1.12.1.min.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style type="text/css">
.logo{
margin-top: 50px;
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
<div class="container-fluid text-center">
	<div class="well logo">
		<h1>UPLOAD ATTENDENCE</h1>
	</div>
</div>
<%
ArrayList<StudentDAO> list=(ArrayList<StudentDAO>)request.getAttribute("Data");
%>
<form action="AddAttendence" method="post">
<div class="container">
	<div class="well">
	
	<div class="well text-center">
	<h2>DAY:</h2>
	<label for="DD" class="col-md-2">DATE</label>
	<select id="DD" class="col-md-1">
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		<option>5</option>
		<option>6</option>
		<option>7</option>
		<option>8</option>
		<option>9</option>
		<option>10</option>
		<option>11</option>
		<option>12</option>
		<option>13</option>
		<option>14</option>
		<option>15</option>
		<option>16</option>
		<option>17</option>
		<option>18</option>
		<option>19</option>
		<option>20</option>
		<option>21</option>
		<option>22</option>
		<option>23</option>
		<option>24</option>
		<option>25</option>
		<option>26</option>
		<option>27</option>
		<option>28</option>
		<option>29</option>
		<option>30</option>
		<option>31</option>
		
	</select>
	
	<label class=" col-md-2" for="MM">MONTH</label>
	<select id="MM" class="col-md-1">
		<option>JANUARY</option>
		<option>FEBURARY</option>
		<option>MARCH</option>
		<option>APRIL</option>
		<option>MAY</option>
		<option>JUNE</option>
		<option>JULY</option>
		<option>AUGUST</option>
		<option>SEPTEMBER</option>
		<option>OCTOBER</option>
		<option>NOVEMBER</option>
		<option>DECEMBER</option>
	</select>
	
	<label class="label-control col-md-2" for="YY">YEAR</label>
	<select id="YY">
		<option>2016</option>
		<option>2017</option>
		<option>2018</option>
		<option>2019</option>
	</select>
	
	</div>
		<div class="table-responsive">
		<table class="table">
			<thead>
				<th>Name</th>
				<th>Roll No</th>
				<th>Attenddence</th>
			</thead>
			
			<tbody>
				<%
				ArrayList data=new ArrayList();
				for(StudentDAO obj:list){
				%>
					<tr>
					<td><%=obj.getName() %></td>
					<td><%=obj.getRollno() %></td>
					<td>
					Absent:<input type="radio" value="0" name="<%=obj.getRollno() %>" >
					Present:<input type="radio" value="1" name="<%=obj.getRollno() %>">
					</td>
					</tr>
				<%
				data.add(obj.getRollno());
				}
				session.setAttribute("list", data);
				%>
			</tbody>
		</table>
		</div>
		<button class="btn btn-primary">Upload</button>
	</div>
</div>
</form>
</body>
</html>