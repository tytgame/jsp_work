<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page info = "JSP ����� �����ϱ�" %>
<%@ page import="java.util.*"%>
<%@ page session="false"%>
<%@ page buffer="16kb" %>
<%@ page autoFlush="true"%>
<%@ page trimDirectiveWhitespaces = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>trimSpace</title>
</head>
<body>
	<%= this.getServletInfo() %>
	<% Date date = new Date(); %>
	<p>���� ��¥�� �ð�</p>
	<%=date.toLocaleString() %>
</body>
</html>