<%@page import="com.makequiz.QuizDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>TEST</h3>
<form action="quiz" method="get">
<input type="submit" value="Start Quiz">
</form>

<form action="TakeQuiz" method="post">
<%
ArrayList testlist=new ArrayList();
ArrayList<QuizDAO> list=(ArrayList<QuizDAO>)request.getAttribute("quesList");
if(list!=null){
for(QuizDAO obj : list){
%>
<table>
<tr><h3>QUESTION:<%=obj.getQues() %></h3></tr>
<tr>
<td><tr>1.<input type="radio" value="<%=obj.getOp1()%>" name="<%=obj.getQues() %>"><%=obj.getOp1() %></tr></td><br>
<td><tr>2.<input type="radio" value="<%=obj.getOp2() %>" name="<%=obj.getQues() %>"><%=obj.getOp2() %></tr></td><br>
<td><tr>3.<input type="radio" value="<%=obj.getOp3() %>" name="<%=obj.getQues() %>"><%=obj.getOp3() %></tr></td><br>
<td><tr>4.<input type="radio" value="<%=obj.getOp4() %>" name="<%=obj.getQues() %>"><%=obj.getOp4() %></tr></td><br>
<br>
</tr>
</table>
<% 
testlist.add(obj.getQues());
}
session.setAttribute("list", testlist);
%>
<input type="submit" value="Submit Quiz">
<%
}
%>
</form>


</body>
</html>