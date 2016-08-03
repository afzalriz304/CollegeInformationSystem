package com.UpdateTeacher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class UpdateTecher
 */
@WebServlet("/UpdateTeacher")
public class UpdateTecher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollno=request.getParameter("id");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="select name,father_name,gender,email,id,age,department,joining,dob from teacher_data where id=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, rollno);
			ResultSet rs=pstmt.executeQuery();
			ArrayList<TeacherDAO> list=new ArrayList<TeacherDAO>();
			TeacherDAO obj;
			while(rs.next()){
				obj=new TeacherDAO();
				obj.setName(rs.getString("name"));
				obj.setFather_name(rs.getString("father_name"));
				obj.setGender(rs.getString("gender"));
				obj.setEmail(rs.getString("email"));
				obj.setId(rs.getString("id"));
				obj.setAge(rs.getInt("age"));
				obj.setDepartment(rs.getString("department"));
				obj.setJoining(rs.getString("joining"));
				obj.setDob(rs.getString("dob"));
				list.add(obj);
			}
			if(list!=null){
				request.setAttribute("list", list);
				RequestDispatcher rd=request.getRequestDispatcher("UpdateTeacher.jsp");
				rd.forward(request, response);
			}
			if(list==null){
				request.setAttribute("null", "null");
				request.setAttribute("Result", "NO RECORD FOUND");
				RequestDispatcher rd=request.getRequestDispatcher("UpdateTeacher.jsp");
				rd.forward(request, response);
					
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}
}

