<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�޼ҵ� ����</title>
</head>
<body>
<%!
	int one;
	int two;
	
	int plusMethod(int one, int two) {
		return one+two;
	}
	String msg;
%>

	one�� two�� ����? <%= plusMethod(3,5) %><br>
	String msg�� ����? <%= msg %><br>
	one�� ����? <%= one %><br>
	
</body>
</html>