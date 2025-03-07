<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메소드 선언</title>
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

	one과 two의 합은? <%= plusMethod(3,5) %><br>
	String msg의 값은? <%= msg %><br>
	one의 값은? <%= one %><br>
	
</body>
</html>