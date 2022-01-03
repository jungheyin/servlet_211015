package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		out.println("안녕");
		
		Date now = new Date();
		out.println(now);
		// kst : 우리나라 시간
		
		// formatter : 자바에서의 연산중 하나의 방법!!
		// SimpleDateFormat 검색 후 오라클 공식문서에 들어가 포멧문자를 참조해 사용하면 된다.
		// 어려우면.. 블로그 참조 / a는 am pm
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		String dateFormat = sdf.format(now);
		out.println(dateFormat);
	}
}











