<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
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
	
<style>
header {height:80px;}
header #logo {font-size:30px;}
header a:hover {text-decoration:none;}
nav {height:60px;}
nav .nav-link {color:black; font-weight:bold;}
nav .nav-link:hover {color:black; font-weight:bold;}
.contents {height:700px;}
footer {height:80px;}
</style>
</head>
<body>
	<div id="wrap"class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<jsp:include page="list.content.jsp" />
		<jsp:include page="footer.jsp" />
	</div>
	
</body>
</html>
<!-- 페이지를 2개를 만드는것이 더 효과적이다!! :확장성을 위해
	<section 부분이 다르게 만든다.>
	1. list templage.jsp :곡 명을 보여주는 페이지
	2. 상세페이지.jsp " 곡 정보를 보여주는 페이지



 -->