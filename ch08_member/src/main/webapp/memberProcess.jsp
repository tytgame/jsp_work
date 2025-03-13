<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDao" class="ch08.MemberDao" />
<jsp:useBean id="memberBean" class="ch08.Member" />
<jsp:setProperty name="memberBean" property="*" />
<%
	boolean result = memberDao.insertMember(memberBean);
	String msg = "회원가입에 실패 하였습니다";
	String url = "member.jsp";
	
	if(result) {
		msg = "축하합니다. 회원이 되셨습니다.";
		url = "login.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>memberProcess 페이지</h1>
</body>
</html>