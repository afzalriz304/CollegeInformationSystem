package com.UpdateStudent;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

/**
 * Servlet implementation class UpdateStudent
 */
@WebServlet("/UpdateStudent")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rollno=request.getParameter("rollno");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="select name,father_name,sex,email,rollno,age,session,dob,branch from student_data where rollno=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, rollno);
			ResultSet rs=pstmt.executeQuery();
			ArrayList<StudentDAO> list=new ArrayList<StudentDAO>();
			StudentDAO obj;
			while(rs.next()){
				obj=new StudentDAO();
				obj.setName(rs.getString("name"));
				obj.setFather_name(rs.getString("father_name"));
				obj.setSex(rs.getString("sex"));
				obj.setEmail(rs.getString("email"));
				obj.setRollno(rs.getString("rollno"));
				obj.setAge(rs.getInt("age"));
				obj.setStdsession(rs.getString("session"));
				obj.setDob(rs.getString("dob"));
				obj.setBranch(rs.getString("branch"));
				list.add(obj);
			}
			if(list!=null){
				request.setAttribute("list", list);
				RequestDispatcher rd=request.getRequestDispatcher("UpdateStudent.jsp");
				rd.forward(request, response);
			}
			if(list==null){
				HttpSession session=request.getSession(false);
				session.setAttribute("null", "null");
				session.setAttribute("Result", "NO RECORD FOUND");
				RequestDispatcher rd=request.getRequestDispatcher("UpdateStudent.jsp");
				rd.forward(request, response);
					
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
