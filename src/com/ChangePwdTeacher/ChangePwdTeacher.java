package com.ChangePwdTeacher;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangePwdTeacher
 */
@WebServlet("/ChangePwdTeacher")
public class ChangePwdTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String New=request.getParameter("newpwd").trim();
		String ConNew=request.getParameter("confirmNewpwd").trim();
		HttpSession session=request.getSession(false);
		String id=(String)session.getAttribute("id");
		
		if(New.equals(ConNew)){
			
			try{
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
				String sql="update teacher_data set pwd=? where id=?";
				PreparedStatement pstmt=con.prepareStatement(sql);
				pstmt.setString(1, ConNew);
				pstmt.setString(2, id);
				if(pstmt.executeUpdate()>0){
					session.invalidate();
					response.sendRedirect("Index.jsp");
				}
			}catch(Exception e){
				System.out.println(e);
			}
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("TeacherSetting.jsp");
			rd.include(request, response);
		}
	}

}