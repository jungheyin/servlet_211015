package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class DatabaseQuiz01 extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
			//insert 쿼리
			String insertQuery = "insert into `real_estate`(`realtorld`, `address`, `area`, `type`, `price`, `rentPrice`)"
					+ "values (3, '헤라펠리스 101ehd 5305호', 350, `매매`, 15000, null)";
		// Select 쿼리 
		String selectQuery = "select * from `real_estate`";
		PrintWriter out = response.getWriter();
		try {
			ResultSet resultSet = mysqlService.select(selectQuery);
			
			while (resultSet.next()) {
				out.println("매물정보: ");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}
}
