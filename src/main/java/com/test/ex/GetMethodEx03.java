package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		 
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age")); 
		// int는 null값을 허용 안함 값은 0으로 나온다. Integer은 null 값이 허용
		
		PrintWriter out = response.getWriter();
//		out.println("user_id: " + userId);
//		out.println("name: " + name);
//		out.println("age:" + age);

		//JSON(Jvascript Object Notation)으로 response 구성하기
		// {"user_id": "hi1856", "name":"heyin", "age":25}
		
		out.print("{ \"user_id\":" + userId + ", \"name\":" + name + ", \"age\":" + age + "}");
		
		
		
		
		
	}
}
