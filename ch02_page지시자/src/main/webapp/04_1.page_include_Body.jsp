<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Directive Ex2</h1>
	
	<%@ include file="04_2.page_include_Top.jsp" %><p/>
	
	include 지시자의 body 부분입니다<br>
	<%@ include file="04_3.page_include_Bottom.jsp" %>
</body>
</html>