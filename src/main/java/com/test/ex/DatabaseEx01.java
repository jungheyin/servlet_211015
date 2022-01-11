package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex01")
public class DatabaseEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// 1. DB 연결
			MysqlService mysqlService = MysqlService.getInstance(); //static으로 되어있는 아이들은 내가 new를 하지 않아도 알아서 해준다. 
																	// singleton이라 한개의 객체만 생성됨
			mysqlService.connection(); // DB연결
			
			// insert 쿼리
			String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `desciption`, `price`)"
					+ "values (4, '고양이 간식 팝니다.', '저희 고양이가 입맛이 까다로워서 잘안먹어요', 2000)";
			
			try {
				mysqlService.update(insertQuery);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		// 2. select 쿼리
		// 3. 결과값 출력
		String selectQuery = "select * from `used_goods`";
		PrintWriter out = response.getWriter();
		try {
			ResultSet resultSet = mysqlService.select(selectQuery);
			
				while (resultSet.next()) { // 결과 행이 있는 동안 수행 (boolean변수) iterator과 비슷하게 동작
					out.println(resultSet.getInt("id"));
					out.println(resultSet.getString("title"));
					out.println(resultSet.getString("description"));
					out.println(resultSet.getInt("price"));
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 4. DB연결 해제
		mysqlService.disconneciton();
		
		
	}
}
