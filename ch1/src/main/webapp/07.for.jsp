<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>for</title>
</head>
<body>
 	<% 
		int sum = 0;
		for(int i=1;i<=10;i++) {
			if(i<10) {
	%>
				<%=i + " + "%> 
	<%
			} else {
	%>
				<%= i + " = "%>
	<%
			}
			sum += i;
		}
	%>
	1~10까지의 합계 : <%=sum %><br>
	
	<% 
		int sum2 = 0;
		for(int i=1;i<=10;i++) {
			if(i<10) {
				out.print(i+" + ");
			} else {
				out.print(i+" = ");
			}
			sum2 += i;
		}
	%>
	1~10까지의 합계 : <%=sum2 %> 
</body>
</html>