package com.TecherRetrieve;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.JDBC.StudentRetrieve.StudentRetrieveDAO;
import com.controller.StudentRetrieve.StudentRetrieveJDBC;

/**
 * Servlet implementation class TeacherRetrieve
 */
@WebServlet("/TeacherRetrieve")
public class TeacherRetrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TeacherRetrieveJDBC jdbc=new TeacherRetrieveJDBC();
			try {
				ArrayList<TeacherRetrieveDAO> list=jdbc.getData();
				request.setAttribute("teacherData", list);
				RequestDispatcher rd=request.getRequestDispatcher("RetrieveTeacher.jsp");
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
