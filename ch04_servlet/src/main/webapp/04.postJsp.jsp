<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Post Servlet방식</h1>
	<form action="PostServlet" method="post">
		ID : <input name="id"><p/>
		PW : <input type="password" name="pwd"><p/>
		email : <input type="email" name="email"><p/>
		<input type="submit" value="전송">
	</form>
</body>
</html>