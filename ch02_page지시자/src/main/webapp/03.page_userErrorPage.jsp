<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"% errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int one = 1, zero = 0;
%>
	<h1>Directive Ex</h1>
	<p>one과 zero의 사칙연산</p>
	one + zero = <%=one + zero %><p/>
	one - zero = <%=one - zero %><p/>
	one * zero = <%=one * zero %><p/>
	one / zero = <%=one / zero %><p/>
</body>
</html>