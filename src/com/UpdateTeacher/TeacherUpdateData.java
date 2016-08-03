package com.UpdateTeacher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TeacherUpdateData
 */
@WebServlet("/TeacherUpdateData")
public class TeacherUpdateData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String father_name=request.getParameter("father");
		String dob=request.getParameter("dob");
		String sex=request.getParameter("sex");
		
		String id=request.getParameter("id");
		int age=Integer.parseInt(request.getParameter("age"));
		String email=request.getParameter("email");
		
		String department=request.getParameter("department");
		String joining=request.getParameter("joining");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="update teacher_data set name=?,father_name=?,gender=?,email=?,age=?,department=?,dob=?,joining=? where id=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, father_name);
			pstmt.setString(3, sex);
			pstmt.setString(4, email);
			pstmt.setInt(5, age);
			pstmt.setString(6, department);
			pstmt.setString(7, dob);
			pstmt.setString(8, joining);
			pstmt.setString(9, id);
			int i=pstmt.executeUpdate();
			if(i>0){
				request.setAttribute("Done", "Yes");
				request.setAttribute("Update", "Record Has Been Updated");
				RequestDispatcher rd=request.getRequestDispatcher("UpdateStudent.jsp");
				rd.forward(request, response);
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
