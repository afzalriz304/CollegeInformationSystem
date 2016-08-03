package com.TeacherLogin;

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


@WebServlet("/teacherlogin")
public class TeacherLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id").trim();
		String pwd=request.getParameter("pwd").trim();
	
		
		
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		TeacherLoginJDBC jdbc=new TeacherLoginJDBC();
		//StudentLoginJdDBC jdbc=new StudentLoginJdDBC();
		try {
			boolean result=jdbc.getAuthentication(id,pwd);
			if(result){
				HttpSession session=request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("userName", jdbc.getName(id));
				session.setAttribute("islogin", "please sign In first");
				RequestDispatcher rd=request.getRequestDispatcher("Teacher.jsp");
				rd.forward(request, response);
			}
			else{
				out.println("<h1>Wrong ID or pwd</h1>");
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
