package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class GetMethodQuiz08 extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String keyword = request.getParameter("keyword"); // input을 받는 부분
		
		// request -> 서블릿 -> response
		// request의 보내느것을 잘보냈는지 디버깅을 걸어 확인먼저하기
		
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		PrintWriter out = response.getWriter(); // 내보내는 역활
		
		out.print("<html><head><title>검색 결과</title><head><body>");
		// 1. 일반 for문, 2. iterater사용, 3. 향상된 for문 사용
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String line = iter.next();
			
			// 검색
//			if (line.contains(keyword)) {
//				out.print(line + "<br>");
//			}
			
			// 풀이1 : 맛집이라 검색시 2개 이상 들어가면 대응이 안되는 방법
			// 처음에 나온 맛집이란 키워드만 찾아준다.
//			int index = line.indexOf(keyword); // 존재 안할시 -1
//			if (index > -1) {
//				StringBuffer sb = new StringBuffer();
//				sb.append(line);
//				sb.insert(index, "<b>"); // |맛집  커서 앞부분에 <b> 태그 추가
//				sb.insert(index + keyword.length() + 3, "/<b>"); // <b>맛집|  맛집 커서 뒷 부분까지
//				out.print(sb + "<br>"); 
//				
//				}
//			}
	
//			// 풀이2 : 처음 찾은 키워드만 찾아서 바꿔준다.
//			if (line.contains(keyword)) {
//				String[] words = line.split(keyword);
//				out.print(words[0] + "<b>" + keyword + "</b>" + words[1] + "<br>");
//			
//			}
			
			// 풀이3 : 한문장에 여러개의 맛집을 찾을때 마다 적용이 되는 방법
			if (line.contains(keyword)) {
				line = line.replace(keyword, "<b>" + keyword + "</b>");
				out.print(line + "<br>");
				
			}
			
			
			
			
		}	
			
			
			
			
		out.print("</body></html>");
		
		
			
	}
	
}


