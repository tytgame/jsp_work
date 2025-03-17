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
<% if (id != null) { %>
	<b><%=id %></b>님 환영합니다<p/>
	즐거운 쇼핑되십시오<p/>
	<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
	<a href="../index.jsp">홈으로</a>
	
<% } else { %>
<form action="loginProcess.jsp" method="post">
	<table border="1" align="center">
		<tr>
			<td colspan="2" align="center"><h2>로그인</h2></td>
		</tr>
		<tr>
			<td width="90px" align="center">아이디</td>
			<td><input name="id" required></td>
		</tr>	
		<tr>
			<td width="90px" align="center">비밀번호</td>
			<td><input name="pwd" required></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="LOGIN">&ensp;
				<input type="reset" value="RESET">&ensp;
				<input type="button" value="회원가입" onclick="location.href='member.jsp'">&ensp;
				<input type="button" onclick="location.href='../index.jsp'" value="홈으로">
			</td>
		</tr>	
	</table>
</form>
<% } %>
</body>
</html>