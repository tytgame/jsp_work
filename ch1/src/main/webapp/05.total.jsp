<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		float f = 3.789f;
		int num = Math.round(f);
		java.util.Date date = new java.util.Date();
		int hour = date.getHours();
		
		int num2 = 83;
		int num3 = 23;
	%>
	<%!
		public int op(int i, int j) {
			return i > j ? i : j;
		}
	%>
	�Ǽ� f�� ���� �ݿø��� �� <%=num %><br>
	������ ��¥�� �ð��� : <%=date %><br>
	�� ���� ū ���ڴ� : <%= op(num2, num3)%><br>
	������ �����ϱ��? �����ϱ��? <%=hour < 12 ? "����" : "����" %><br>
</body>
</html>