<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>scriptlet</title>
</head>
<body>
	<%
		String name = "이순신";
		int age = 400;
		boolean bool = true;
		double douNum = 3.14;
	%>
	나의 이름은 <%= name %>입니다.<br>
	나이는 <%=age %>살이고<br>
	학원을 다니고 있습니까? <%=bool%><br>
	원주율은 <%=douNum %>입니다.
	
<%-- 	지역변수는 반드시 초기화를 한 후에 사용 가능
	<%
		int one;
		String msgOne;
	%>
	one : <%=one %>
	msgOne : <%= msgOne %> --%>
	
	<%=application.getRealPath("/") %>
	
</body>
</html>