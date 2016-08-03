package com.makequiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Makequiz
 */
@WebServlet("/Makequiz")
public class Makequiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String question=request.getParameter("question").trim();
		String option1=request.getParameter("option1").trim();
		String option2=request.getParameter("option2").trim();
		String option3=request.getParameter("option3").trim();
		String option4=request.getParameter("option4").trim();
		String answer=request.getParameter("answer").trim();
		
		PrintWriter out=response.getWriter();
		if(answer.equals("1")){
			answer=option1;
		}
		else if(answer.equals("2")){
			answer=option2;
		}
		else if(answer.equals("3")){
			answer=option3;
		}
		else if(answer.equals("4")){
			answer=option4;
		}
		
		MakeQuizJDBC jdbc=new MakeQuizJDBC();
		boolean result=jdbc.insertQuestion(question, option1, option2, option3, option4, answer);
		if(result){
			out.println("<font style='color:green'>Sucessfully submit...</font>");
			RequestDispatcher rd=request.getRequestDispatcher("makequiz.jsp");
			rd.include(request, response);
		}
		else{
			out.println("<font style='color:Red'>NOT submit...</font>");
			RequestDispatcher rd=request.getRequestDispatcher("makequiz.jsp");
			rd.include(request, response);
		}
	}

}


