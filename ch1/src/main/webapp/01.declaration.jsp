<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
</head>
<body>
	���� �̸��� <%=name %> �Դϴ�<br>
	�г��� <%= grade %>�г� �Դϴ�<br>
	
	<%!
		// ������� ��ġ�� ������� ���
		String name = "�ڼ���";
		int grade = 3;
	%>
	

	<%
		// ���� : ���������� ���� ���� �Ǿ�� ��� ����
 		// String name2 = team + "�л�";
	%>
	<%
		String team = "������";
	%>

</body>
</html>