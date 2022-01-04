<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz03</title>
<!--  bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	<!-- 절대경로는 /로 시작하고 풀 경로를 써야한다. :도메인의 기준으로 action에 써줘야한다.
		상대경로는 파일이름을 써준다.-->
	<div class="container">
		<h1>체격 조건 입력</h1>
		<form method="get" action="/lesson02/quiz03_1.jsp">
		<div class="d-flex">
			<input type="text" id="height" class="form-control col-2" name="height" placeholder="키를 입력하세요.">
			<label class="mt-3 ml-1 mr-3">cm</label>
			<input type="text" id="weight" class="form-control col-2" name="weight" placeholder="몸무게를 입력하세요.">
			<label class="mt-3 ml-1 mr-3">kg</label>
			<button type="submit" class="btn btn-info form-control col-1" >버튼</button>
		</div>
		
		
		</form>	
	</div>
	
	
</body>
</html>