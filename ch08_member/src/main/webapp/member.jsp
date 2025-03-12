<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<form method="post" action="" id="register">
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
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="male">남&emsp;
					<input type="radio" name="gender" value="female">여
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="birthday"></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input name="email"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input name="postNumber">&emsp;
					<input type="button" value="우편번호 찾기" name="findPostNumber">
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input name="address"><p/><input name="detailAddress"></td><br>
			</tr>
			<tr>
				<td>취미</td>
				<td>
				<input type="checkbox" name="hobby" value="internet">인터넷
				<input type="checkbox" name="hobby" value="trip">여행
				<input type="checkbox" name="hobby" value="game">게임
				<input type="checkbox" name="hobby" value="movie">영화
				<input type="checkbox" name="hobby" value="exercise">운동
				</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option value="police">경찰</option>
						<option value="doctor">의사</option>
						<option value="nurse">간호사</option>
						<option value="student">학생</option>
				</td>
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