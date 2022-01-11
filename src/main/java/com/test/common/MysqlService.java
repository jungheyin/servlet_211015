package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService { // singleturn으로 만든다.
	private static MysqlService mysqlService = null;  // static은 메모리에 올라가게 할려고 사용
	
	// DB의 정보 입력
	// 도메인 뒤에 접속할 database명까지 써준다.
	private String url = "jdbc:mysql://localhost:3306/boram_211015"; // db를 jdbc 라고 부른다.
	private String id = "root";
	private String pw = "root";
	
	// 필요한 객체
	private Connection conn = null; // db의 연결되는 프로그램
	private Statement statement;
	private ResultSet res; // 결과값을 담는 객체
	
	// 자신의 객체
	// Singleton 패턴: MysqlService 객체가 단 하나만 생성되도록 하는 디자인패턴(DB연결을 여러 객페에서 하지 않도록)
	public static MysqlService getInstance() { // mysqlService를 하나만 만들수 있게 해주는 메소드  8번에서 static이 붙어있어서 사용한것
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB를 연결하는 메소드 
	public void connection() {// 여기서 에러가 날 경우에는 여기에서 처리하는것이 맞음
		try {
		// 1. 드라이버를 메모리에 로딩
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 2. DB connection
			conn = DriverManager.getConnection(url,id, pw);
			// 3. statement: DB와 쿼리를 실행위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} 
		// DB를 끝는 메소드
		public void disconneciton() {// 여기서 에러가 날 경우에는 여기에서 처리하는것이 맞음
			try {
				statement.close();
				conn.close(); // 마지막 것 부터 끝어줘야한다.
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		// query에서 결과를 가져오는 메소드
		public ResultSet select(String query) throws SQLException { // 쿼리에서 에러가 날 경우엔 쿼리가 처리하는것이 맞음
			res = statement.executeQuery(query);
			return res;
		}
		
		// query에서 가져온 결과를 수정하는 메소드
		public void update(String query) throws SQLException {// 쿼리에서 에러가 날 경우엔 쿼리가 처리하는것이 맞음
			statement.executeUpdate(query);
		}
}
