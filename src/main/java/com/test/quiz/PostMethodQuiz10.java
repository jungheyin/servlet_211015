package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10  extends HttpServlet {
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
	
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>로그인</title></head><body>");
		
//		id가 일치하지 않는 경우 id가 일치하지 않습니다. 를 출력하세요.
//		password가 일치하지 않는 경우 password가 일치하지 않습니다. 를 출력하세요.
//		일치하는 경우 아래와 같이 출력하세요. (HTML 화면)
		// 않는 조건 부터 보기
		
		if (userMap.get("id").equals(id) == false) {
			out.print("id가 일치하지 않습니다.");
		} else if (userMap.get("password").equals(password) == false) {
			out.print("password가 일치하지 않습니다.");
		} else {
			out.print(userMap.get("name") + "님 환영합니다.");
		}
		
		
		
		
		
		
		out.print("</body></html>");
		
		
		
	}

}
