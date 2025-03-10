<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js" charset="UTF-8"></script>
</head>
<body>
	<table border="1">
		<form method="post" action="memberProcess.jsp" id="register">
			<tr>
				<th colspan="2">회 원 가 입</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd" id="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="rePwd" id="rePwd"></td>
			</tr>	
			<tr>
				<td>이름</td>
				<td><input name="name"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="birthday"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input name="email"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="회원가입" onclick="inputCheck();">&emsp;
					<input type="reset">
				</td>
			</tr>	
		</form>
	</table>
</body>
</html>