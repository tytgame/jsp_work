<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	
	String[] hobby = request.getParameterValues("hobby");
	
	if (gender.equals("M")) {
		gender = "남자";
	} else {
		gender = "여자";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request</title>
</head>
<body>
		이름 : <%=name %><p/>
		학번 : <%=studentNum %><p/>
		성별 : <%=gender %><p/>
		전공 : <%=major %><p/>
		취미 : <%
/*  				for(int i=0;i<hobby.length;i++) {
					out.print(hobby[i] + ", ");
				} */ 
				
 				 for(String str : hobby) {
					out.print(str + ", ");
				}   %>
				<p/>
</body>
</html>