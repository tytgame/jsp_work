<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch06_oracleJDBC.*, java.util.*"%>
<jsp:useBean id="uBeanJob" class="ch06_oracleJDBC.UseBeanDBJob"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Bean을 사용한 ORACLE연동</h1>
	<table border="1">
		<tr>
			<th>직급 코드</th>
			<th>직급 명</th>
		</tr>
	<%
		ArrayList<Bean_job> alist = uBeanJob.getList();
		for(int i=0;i<alist.size();i++) {
			Bean_job bean = alist.get(i);
	%>
		<tr>
			<td><%=bean.getJob_code() %></td>
			<td><%=bean.getJob_name() %></td>
		</tr>
	<%
		}
	%>
	</table>

</body>
</html>