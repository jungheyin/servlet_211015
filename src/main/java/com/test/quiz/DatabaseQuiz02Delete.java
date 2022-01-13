package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_delete")
public class DatabaseQuiz02Delete extends HttpServlet {
		
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// requset 파라미터 꺼낸다.
		 int id = Integer.valueOf(request.getParameter("id")); // id는 필수 값이므로 (에러는 보내는주는 쪽의 잘못)
		// DB연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		// delete query
		String delectQuery = "delete from `site` where `id`=" + id;
		try {
			mysql.update(delectQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB해제
		mysql.disconneciton();
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
		
		
	}
	
}
