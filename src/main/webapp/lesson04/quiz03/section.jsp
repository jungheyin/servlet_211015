<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>


<%
	// DB연동
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	
	String query = "select * from `used_goods`";
	ResultSet result = mysql.select(query);
	

%>
<section class="contents">
	<div>
		<div class="border">
			<img src="#">
			<div class="font-weight-bold">text</div>
			<div class="price">10000</div>
			<div class="userName">최준</div>
		</div>
	</div>



</section>

<%
	//DB연동 해제
	mysql.disconneciton();
%>>