package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_insert")
public class DatabaseQuiz02Insert extends HttpServlet {
	
	// doGet과 doPost는 일치 시켜주어야 한다.
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// request 파라미터 꺼낸다.
		String name = request.getParameter("name"); // 잘 들어왔는지도 확인해주기!!
		String url = request.getParameter("url");
		
		//DB연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// insert query -> 결과출력
		String insertQuery="insert into `site` (`name`,`url`)"
					+ "values ('" + name +"', '" + url + "');";
		
		try {
			mysql.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//DB해제
		mysql.disconneciton();
		
		// 리다이렉트 -> quiz02.jsp(즐겨찾기 목록)
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
