package com.AddBook;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addbook
 */
@WebServlet("/Addbook")
public class Addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name").toLowerCase();
		String writer=request.getParameter("writer").toLowerCase();
		String edition=request.getParameter("edition").toLowerCase();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cis","root","@hashCODE304");
			String sql="insert into book"
					+"(book,writer,edition)"
					+"values(?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, writer);
			pstmt.setString(3, edition);
			if(pstmt.executeUpdate()>0){
				request.setAttribute("upload", "file has been uploaded");
				request.setAttribute("uploaded", "true");
				RequestDispatcher rd=request.getRequestDispatcher("AddBook.jsp");
				rd.forward(request, response);
			}
			
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
