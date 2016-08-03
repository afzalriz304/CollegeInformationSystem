package com.controller.StudentProfile;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JDBC.StudentProfileJDBC.StudentProfileDAO;
import com.JDBC.StudentProfileJDBC.StudentProfileJDBC;


/**
 * Servlet implementation class StudentProfileController
 */
@WebServlet("/studentprofile")
public class StudentProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		PrintWriter out=response.getWriter();
		String username=(String) session.getAttribute("userName");
		
		StudentProfileJDBC jdbc=new StudentProfileJDBC();
		try {
			
				ArrayList<StudentProfileDAO> stdlist=jdbc.getStudentData(username);
				request.setAttribute("StudentData", stdlist);
				RequestDispatcher rd=request.getRequestDispatcher("StudentProfile.jsp");
				rd.forward(request, response);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
