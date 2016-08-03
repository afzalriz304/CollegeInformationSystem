package com.Student.ViewController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JDBC.StudentRegistration.StudentRegistrationJBDC;
import com.JDBC.StudentRetrieve.StudentRetrieveDAO;
import com.controller.StudentRetrieve.StudentRetrieveJDBC;

/**
 * Servlet implementation class ViewStudent
 */
@WebServlet("/viewstudent")
public class ViewStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentRetrieveJDBC jdbc=new StudentRetrieveJDBC();
		try {
			ArrayList<StudentRetrieveDAO> list=jdbc.getData();
			request.setAttribute("StudentData", list);
			RequestDispatcher rd=request.getRequestDispatcher("RetriveStudent.jsp");
			rd.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
