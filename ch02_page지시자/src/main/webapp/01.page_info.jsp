<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page info = "JSP ����� �����ϱ�" %>
<%@ page import="java.util.*"
		 session="false"
		 buffer="16kb"
		 autoFlush="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%= this.getServletInfo() %>
	<% Date date = new Date(); %>
	<p>���� ��¥�� �ð�</p>
	<%=date.toLocaleString() %>
</body>
</html>