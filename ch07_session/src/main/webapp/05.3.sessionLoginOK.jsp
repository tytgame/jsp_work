<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Session 로그인</h2>
	<b><%=id %></b>님 로그인 하셨습니다<p/>
	<input type="button" value="로그아웃" onclick="location.href='05.4.sessionLogout.jsp'">
</body>
</html>