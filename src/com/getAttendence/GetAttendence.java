package com.getAttendence;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetAttendence
 */
@WebServlet("/GetAttendence")
public class GetAttendence extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String branch=request.getParameter("branch");
		String session=request.getParameter("session");
		
		GetAttendenceJDBC jdbc=new GetAttendenceJDBC();
		try {
			ArrayList<StudentDAO> list=jdbc.getList(branch, session);
			if(list!=null){
				request.setAttribute("Data", list);
				RequestDispatcher rd=request.getRequestDispatcher("UploadAttendenceList.jsp");
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
