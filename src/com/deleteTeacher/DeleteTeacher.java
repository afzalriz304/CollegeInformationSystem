package com.deleteTeacher;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import response.DeleteTeacherJDBC;

import com.JDBC.DeleteStudent.DeleteStudentJDBC;

/**
 * Servlet implementation class DeleteTeacher
 */
@WebServlet("/DeleteTeacher")
public class DeleteTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		
		DeleteTeacherJDBC jdbc=new DeleteTeacherJDBC();
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		try {
			boolean result = jdbc.deleteTeacher(id);
			System.out.println(result);
			if(result==true){
				request.setAttribute("Done", "Yes");
				request.setAttribute("Delete", "TEACHER DATA HAS BEEN DELETED...");
				RequestDispatcher rd=request.getRequestDispatcher("DeleteTeacher.jsp");
				rd.forward(request, response);
			}
			if(result==false){
				request.setAttribute("Done", "No");
				request.setAttribute("Not", "No Such Id found");
				RequestDispatcher rd=request.getRequestDispatcher("DeleteTeacher.jsp");
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
