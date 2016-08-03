package com.controller.studentLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JDBC.StudentLogin.StudentLoginJDBC;
//import com.JDBC.student.StudentLoginJdDBC;

/**
 * Servlet implementation class StudentLoginController
 */
@WebServlet("/studentlogin")
public class StudentLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollno=request.getParameter("rollno").trim();
		String pwd=request.getParameter("pwd").trim();
	
		System.out.println(rollno);
		System.out.println(pwd);
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		StudentLoginJDBC jdbc=new StudentLoginJDBC();
		//StudentLoginJdDBC jdbc=new StudentLoginJdDBC();
		try {
			boolean result=jdbc.getAuthentication(rollno,pwd);
			if(result){
				HttpSession session=request.getSession();
				session.setAttribute("rollno", rollno);
				session.setAttribute("userName", jdbc.getName(rollno));
				session.setAttribute("islogin", "please sign In first");
				RequestDispatcher rd=request.getRequestDispatcher("StudentDashboard.jsp");
				rd.forward(request, response);
			}
			else{
				out.println("<h1>Wrong rollno or pwd</h1>");
				RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
				rd.include(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
