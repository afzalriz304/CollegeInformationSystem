package com.makequiz;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makequiz.QuizDAO;
import com.makequiz.QuizJDBC;

/**
 * Servlet implementation class quiz
 */
@WebServlet("/quiz")
public class quiz extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int count=Integer.parseInt(request.getParameter("count"));
		QuizJDBC jdbc=new QuizJDBC();
		ArrayList<QuizDAO> list=jdbc.getQuestion();
		request.setAttribute("quesList", list);
		RequestDispatcher rd=request.getRequestDispatcher("takequiz.jsp");
		rd.forward(request, response);
		
	}
}
