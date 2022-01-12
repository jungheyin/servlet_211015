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
	public void doGet (HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		
		// DB연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		try {
		//insert 쿼리
		String insertQuery = "insert into `real_estate`(`realtorld`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values (3, '헤라펠리스 101ehd 5305호', 350, `매매`, 1500000, null)";
		
			mysqlService.update(insertQuery);
		
		// Select 쿼리 -> 처리(출력)
		String selectQuery = "select * from `real_estate` order by `id` desc limit 10";
		ResultSet resultSet = mysqlService.select(selectQuery);
			
		PrintWriter out = response.getWriter();
		
			while (resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물정보: " + address + ", 면적:" + area + ", 타입:" + type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException ioe) { // PrintWriter을 내가 처리하는 방법을 사용한것!!
			ioe.printStackTrace();
		}
		
		// DB 연결 해제
		mysqlService.disconneciton();
		
	}
}
