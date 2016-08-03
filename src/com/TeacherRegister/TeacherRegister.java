package com.TeacherRegister;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JDBC.StudentRegistration.StudentRegistrationJBDC;
import com.JDBC.registerTeacher.RegisterTeacher;

/**
 * Servlet implementation class TeacherRegister
 */
@WebServlet("/TeacherRegister")
public class TeacherRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String father_name=request.getParameter("father");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String rollno=request.getParameter("id");
		int age=Integer.parseInt(request.getParameter("age"));
		String department=request.getParameter("department");
		int joining=Integer.parseInt(request.getParameter("joining"));
		String dob=request.getParameter("dob");
		String pwd=request.getParameter("pwd");

		RegisterTeacher jdbc=new RegisterTeacher();
			
			try {
				boolean result;
				try {
					result = jdbc.registerTeacher(name,father_name,sex,email,rollno,age,department,joining,dob,pwd);
					if(result){
						//jdbc.addAcedemics(rollno);
						RequestDispatcher rd=request.getRequestDispatcher("RegisterStudentSuccess.jsp");
						rd.forward(request, response);
					}
					else{
						System.out.println("I am in false of servlet");
						PrintWriter out=response.getWriter();
						out.println("UNSucessfull...");
						RequestDispatcher rd=request.getRequestDispatcher("RegisterTeacher.jsp");
						rd.include(request, response);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
