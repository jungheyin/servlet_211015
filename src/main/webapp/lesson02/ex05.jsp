<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	//JAVA CALENDAR 으로 인터넷 치면 나온다.
	// singleton: 패턴 - 디자인 패턴 (면접문제에서도 많이 나온다.)
	// 여기서 getInstance는 singleton이 아니다.
	Calendar today = Calendar.getInstance();
	out.print(today + "<br>");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.print("오늘 날짜:" + sdf.format(today.getTime())); 
		//getTime()은 Calendar - > Date 객체로 변환 후 format 적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 하루전
	out.println("어제 날짜:" + sdf2.format(yesterday.getTime()));
%>
</body>
</html>