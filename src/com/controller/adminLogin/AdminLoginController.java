package com.controller.adminLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JDBC.admin.AdminLoginJDBC;

/**
 * Servlet implementation class AdminLoginController
 */
@WebServlet("/adminlogin")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("adminid");
		String pwd=request.getParameter("passkey");
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		AdminLoginJDBC jdbc=new AdminLoginJDBC();
		try {
			boolean result=jdbc.authentication(userid,pwd);
			if(result){
				HttpSession session=request.getSession();
				session.setAttribute("UserName", jdbc.getName(userid));
				session.setAttribute("islogin", "please sign In first");
				RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
				rd.forward(request, response);
			}
			else{
				out.println("<h1>WRONG USERNAME OR PASSWORD</h1>");
				RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
				rd.include(request, response);
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
