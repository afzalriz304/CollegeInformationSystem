package com.controller.DeleteStudent;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.JDBC.DeleteStudent.DeleteStudentJDBC;

/**
 * Servlet implementation class DeleteStudentController
 */
@WebServlet("/deletstudent")
public class DeleteStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollno=request.getParameter("rollno");
		
		DeleteStudentJDBC jdbc=new DeleteStudentJDBC();
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		try {
			boolean result = jdbc.deleteStudent(rollno);
			System.out.println(result);
			if(result==true){
				request.setAttribute("Done", "Yes");
				request.setAttribute("Delete", "STUDENT DATA HAS BEEN DELETED...");
				RequestDispatcher rd=request.getRequestDispatcher("DeleteStudent.jsp");
				rd.forward(request, response);
			}
			if(result==false){
				request.setAttribute("Done", "No");
				request.setAttribute("Not", "No Such Roll no found");
				RequestDispatcher rd=request.getRequestDispatcher("DeleteStudent.jsp");
				rd.forward(request, response);
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
