<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="06_3.action_includeTag6.jsp">
		<jsp:param value="jsp ������" name="siteName"/>
		<jsp:param value="02-123-4567" name="siteTel"/>
	</jsp:include>
	<p/>
	
	include ActionTag�� Body�Դϴ�<br>
	<%=siteName %><br>
	<%=siteTel %>
</body>
</html>