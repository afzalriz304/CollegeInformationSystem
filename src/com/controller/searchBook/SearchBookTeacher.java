package com.controller.searchBook;

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
 * Servlet implementation class SearchBookTeacher
 */
@WebServlet("/SearchBookTeacher")
public class SearchBookTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String search=request.getParameter("book").toLowerCase().trim();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="select * from book where book=?";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1,search);
			ResultSet rs=pstmt.executeQuery();
			ArrayList<BookDAO> list=new ArrayList<BookDAO>();
			BookDAO obj;
			while(rs.next()){
				obj=new BookDAO();
				obj.setName(rs.getString("book"));
				obj.setWriter(rs.getString("writer"));
				obj.setEdition(rs.getString("edition"));
				list.add(obj);
			}
			request.setAttribute("book", list);
			RequestDispatcher rd=request.getRequestDispatcher("TeacherBookResult.jsp");
			rd.forward(request, response);
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
