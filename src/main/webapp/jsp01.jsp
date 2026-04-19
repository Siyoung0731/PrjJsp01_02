<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String header = "Hello World!!!";
	Date today = new Date(); //import : ctrl + shift + m : 한줄 임포트
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	String now = sdf.format(today);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><% out.print(header); %></h1>
	<p><%= now %></p>
</body>
</html>