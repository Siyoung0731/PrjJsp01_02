<%@page import="db.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	DBHandler db = new DBHandler();
	db.list(username);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>List Jsp</h2>
	<p>검색할 이름: <%=username %></p>
	<ul><%=db.tag %></ul>
</body>
</html>