package com.controller.RegisterStudentController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JDBC.StudentRegistration.StudentRegistrationJBDC;

/**
 * Servlet implementation class RegisterStudentController
 */
@WebServlet("/registration")
public class RegisterStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name").trim();
		String father_name=request.getParameter("father").trim();
		String sex=request.getParameter("sex").trim();
		String email=request.getParameter("email").trim();
		String rollno=request.getParameter("rollno").trim();
		int age=Integer.parseInt(request.getParameter("age"));
		String branch=request.getParameter("branch").trim();
		String Studsession=request.getParameter("session").trim();
		String dob=request.getParameter("dob").trim();
		String pwd=request.getParameter("pwd").trim();

		StudentRegistrationJBDC jdbc=new StudentRegistrationJBDC();
			
			try {
				boolean result;
				try {
					result = jdbc.registerStudent(name,father_name,sex,email,rollno,age,branch,Studsession,dob,pwd);
					if(result){
						jdbc.addAcedemics(rollno);
						RequestDispatcher rd=request.getRequestDispatcher("RegisterStudentSuccess.jsp");
						rd.forward(request, response);
					}
					else{
						System.out.println("I am in false of servlet");
						PrintWriter out=response.getWriter();
						out.println("UNSucessfull...");
						RequestDispatcher rd=request.getRequestDispatcher("RegisterStudent.jsp");
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
