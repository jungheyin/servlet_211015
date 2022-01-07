<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D-Day 계산</title>
<!--  bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<h1>오늘부터 1일</h1>
		<%
		Calendar today = Calendar.getInstance();
		SimpleDateFormat date = new SimpleDateFormat("yyyy년 M월 d일");
		
		today.add(Calendar.DATE, -1); // 오늘은 1일이기때문에 today를 전날로 맞줘줘야한다.
			for (int i = 1; i <= 10; i++) { // 100부터 시작해서 1000에 끝내고  100씩 더하는 방법도 있다.
				today.add(Calendar.DATE, 100);
		
		%>
			<div class="display-4" >
				<span><%= (i * 100) %>일 : </span>
				<span class="text-danger"><%= date.format(today.getTime()) %></span>
			</div>
			<%
				}
			%>
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>