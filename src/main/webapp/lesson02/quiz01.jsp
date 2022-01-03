<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	
<%!
	// 1. 1부터 n까지의 합계를 구하는 함수

	public int getSum(int number) {
	int sum = 0;
	for (int i = 0; i < number; i++) {
	 	sum += i;
	}	
	return sum;
	
	}
%>
<% 
	// 2. 점수들의 평균 구하기
	
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
				
	}
	
	double average = (double)sum + scores.length;
	
	// 3. 채점 결과
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for(int i = 0; i < scoreList.size(); i++) {
		if(scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
		
	}
	
	// 4. 나이 구하기
	String birthDay = "20010820";

	String year = birthDay.substring(0, 4);
	
	int age =2021 - Integer.valueOf(year) + 1;
	
//	out.print(year); 으로 잠깐 결과를 볼 수 있음!!

	 
%>

	<h1>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h1>
	<h1>평균 점수는 <%= average %>입니다.</h1>
	<h1>채점 결과는 <%= score %>점 입니다.</h1>
	<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>

	




</body>
</html>