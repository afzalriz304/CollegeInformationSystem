package com.AddAttendence;

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
 * Servlet implementation class AddAttendence
 */
@WebServlet("/AddAttendence")
public class AddAttendence extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("result");
		ArrayList list=(ArrayList)request.getSession().getAttribute("list");
		AttendenceJDBC jdbc=new AttendenceJDBC();
		for(int i=0;i<list.size();i++){
			
			//String val=(String)request.getParameterValues(list.get(i));
			//System.out.println(list.get(i));
			
			//System.out.println(request.getParameter((String)list.get(i)));
			String rollno=(String)list.get(i);
			String val=request.getParameter((String)list.get(i));
			try {
				boolean result=jdbc.Upload(rollno, val);
				if(result){
					RequestDispatcher rd=request.getRequestDispatcher("UploadAttendence.jsp");
					rd.forward(request, response);
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
