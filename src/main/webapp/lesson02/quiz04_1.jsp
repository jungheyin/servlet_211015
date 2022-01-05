<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
<!--  bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
	<h1>계산 결과</h1>
<% 
	Integer number1 = Integer.valueOf(request.getParameter("number1"));
	Integer number2 = Integer.valueOf(request.getParameter("number2"));
	String operator = request.getParameter("operator");
	// 반드시 넘어올수 있게 해준다.
	
	double result = 0;
	// privity 타입일 경우 double result; 선언 할 경우 0값으로 나온다.
	String printOperator = null;// 출력을 위한 operator 이다
	
	switch(operator) {
	case "plus":
		result = number1 + number2;
		printOperator = "+";
		break; // break는 꼭 필수!!
	case "minus":
		result = number1 - number2;
		printOperator = "-";
		break;
	case "multiple":
		result = number1 * number2;
		printOperator = "*";
		break;	
	case "divide":
		result = number1 * (double)number2;
		printOperator = "/";
		break;
	}
	
%>

	<div class="display-3">
<!-- 	<span><%= number1 %> <%= printOperator %> <%= number2 %> = </span>  -->
		<% // 한거번에 같이 나타내는법
			out.print(number1 + " " + printOperator + " " + number2 + " = ");
		%>
		<span class="text-info"><%= result %></span>
	</div>
	
	</div>
</body>
</html>