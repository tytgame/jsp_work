<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>TJOEUN LOCATION 테이블</h1>
<%
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "tjoeun", "1234");
		st = con.createStatement();
		rs = st.executeQuery("select * from location");
%>
<table border="1">
	<tr>
		<th>LocalCode</th>
		<th>NationalCode</th>
		<th>LocalName</th>
	</tr>
<%	
		while (rs.next()) {
			String localCode = rs.getString(1);
			String nationalCode = rs.getString(2);
			String localName = rs.getString(3);
%>
	<tr>
		<td><%=localCode %></td>
		<td><%=nationalCode %></td>
		<td><%=localName %></td>
<%
		}
%>

</table>

<%	
	} catch(Exception e) {
		
	} finally {
		if(con != null) {
			con.close();
		}
		if(st != null) {
			st.close();
		}
		if(rs != null) {
			rs.close();
		}
	}
%>

</body>
</html>