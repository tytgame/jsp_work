<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js?v=<%=System.currentTimeMillis() %>"></script>
<!-- 주소 가져오기 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<table border="1">
		<form name="frm" method="post" action="memberProcess.jsp" id="registerForm" >
			<tr>
				<th colspan="2">회 원 가 입</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td>
					<input name="id"onkeydown="inputIdChk();">
					<input type="button" value="ID 중복확인" onclick="idCheck(this.form.id.value);">
					<input type="hidden" name="idBtnCheck" value="idUncheck">
				</td>
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
					<input type="radio" name="gender" value="1" >남&emsp;
					<input type="radio" name="gender" value="0">여
				</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="birthday"></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td>
					<input name="postNumber" id="postcode" readonly>&emsp;
					<input type="button" value="우편번호 찾기" name="findPostNumber" onclick="findAddress();">
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>
					<input id="addr" name="address" size="35px" readonly><br>
					<input name="detailAddress" placeholder="상세주소 넣기">
				</td><br>
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
						<option value="0">선택하세요</option>
						<option value="police">경찰</option>
						<option value="doctor">의사</option>
						<option value="nurse">간호사</option>
						<option value="student">학생</option>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="회원가입" onclick="inputCheck();">&emsp;
					<input type="reset" value="다시쓰기">
					<input type="button" value="로그인" onclick="location.href='login.jsp'">
				</td>
			</tr>	
		</form>
	</table>
</body>
</html>