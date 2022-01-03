package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		Integer number1 = Integer.valueOf(request.getParameter("number1"));
		Integer number2 = Integer.valueOf(request.getParameter("number2"));
		
		PrintWriter out = response.getWriter();
		
		out.print("{ \"additon\":" + (number1 + number2) + ", \"subtranction\":" + (number1 - number2) 
				+ ", \"multiplication\":" + (number1 * number2) + ", \"division\":" + (number1 / number2) + "}");
		
		
		
		
		
		
	}
}
