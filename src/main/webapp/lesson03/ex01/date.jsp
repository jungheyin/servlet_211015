<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>    
<!-- 여기는 첨부만 되는 폴더이다. 필요없는 내용은 다 지운다!! -->

<p>
	현재 시간: <%= Calendar.getInstance().getTime() %> <!-- date를 바로 찍은것 -->
	<!-- 현재 시간: Fri Jan 07 16:09:56 KST 2022 
		date를 찍었을때 이렇게 나온다!!(기억해 두기!!)
	 -->
</p>