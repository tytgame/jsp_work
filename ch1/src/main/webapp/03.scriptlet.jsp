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
		String name = "�̼���";
		int age = 400;
		boolean bool = true;
		double douNum = 3.14;
	%>
	���� �̸��� <%= name %>�Դϴ�.<br>
	���̴� <%=age %>���̰�<br>
	�п��� �ٴϰ� �ֽ��ϱ�? <%=bool%><br>
	�������� <%=douNum %>�Դϴ�.
	
<%-- 	���������� �ݵ�� �ʱ�ȭ�� �� �Ŀ� ��� ����
	<%
		int one;
		String msgOne;
	%>
	one : <%=one %>
	msgOne : <%= msgOne %> --%>
	
	<%=application.getRealPath("/") %>
	
</body>
</html>