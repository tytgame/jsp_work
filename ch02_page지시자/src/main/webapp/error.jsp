<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>������ ���� ���ܰ� �߻��Ǿ����ϴ�</p>
	����Ÿ�� : <%= exception.getClass().getName() %> <p/>
	�����޽��� : <%= exception.getMessage() %>
</body>
</html>