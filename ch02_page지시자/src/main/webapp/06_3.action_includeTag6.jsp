<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String sName = request.getParameter("siteName");
	String sTel = request.getParameter("siteTel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	include ActionTag�� �����Դϴ�<br>
	<%=sName %><br>
	<%=sTel %>
</body>
</html>