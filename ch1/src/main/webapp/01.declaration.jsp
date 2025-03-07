<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>변수 선언</title>
</head>
<body>
	나의 이름은 <%=name %> 입니다<br>
	학년은 <%= grade %>학년 입니다<br>
	
	<%!
		// 멤버변수 위치와 상관없이 사용
		String name = "박서우";
		int grade = 3;
	%>
	

	<%
		// 오류 : 지역변수라서 먼저 선언 되어야 사용 가능
 		// String name2 = team + "학생";
	%>
	<%
		String team = "더조은";
	%>

</body>
</html>