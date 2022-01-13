<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>  
<%@ page import="java.sql.ResultSet" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<!--  bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

</head>
<body>

<%
	//DB 추가
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	// select query
	String query = "select * from `site`";
	ResultSet result = mysql.select(query); 
	
	
%>
	<!--  request 부분!! -->
	<div class="container">
		<h1>즐겨찾기 추가</h1>
		
		<form method="post" action="/db/quiz02_insert">	<!-- 사이트를 쿼리를 보내주는건 post방식으로 보낸다!! -->
			<label class="w-25">
				<b>사이트명:</b>
				<input type="text" class="form-control mt-1" name="name">
			</label><br>
			<label class="w-50 mt-2 mb-4">
				<b>사이트 주소:</b>
				<input type="text" class="form-control mt-1" name="url">
			</label>
			<div>
				<button type="submit" class="btn btn-success">추가</button>
			</div>
		</form>
	</div>
	
	<% 
	
	
	// DB 연동 해제
		mysql.disconneciton();
	
	// 리다이렉트
		
	%>
</body>
</html>