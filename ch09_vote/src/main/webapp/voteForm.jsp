<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch09.*, java.util.*" %>
<jsp:useBean id="vDao" class="ch09.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals(""))) {
		num = Integer.parseInt(request.getParameter("num"));
	}
	VoteList vlist = vDao.getOneVote(num);
	ArrayList<String> vitem = vDao.getItem(num);
	
	String question = vlist.getQuestion();
	int type = vlist.getType();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문폼</title>
<style type="text/css">
    * {margin: 0 auto;}
    div {width: 500px;}
    h2 {text-align: center;}
    .m30 {margin-top: 30px;}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css
">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>
	<form action="voteFormProcess.jsp" method="post">
		<table class="table">
			<tr>
				<td>Q : <%=question %></td>
			</tr>
			<tr>
				<td>
				<%
					for(int i=0;i<vitem.size();i++) {
						String item = vitem.get(i);
						if(type == 1) {
							out.print("<input type='checkbox' name='itemnum' value='" + i + "'>");
						} else {
							out.print("<input type='radio' name='itemnum' value='" + i + "'>");
						}
						out.print("&ensp;" + item + "<p/>");
					}
				%>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="투표">&emsp;
					<input type="button" value="결과" onclick="window.open('voteView.jsp', 'voteView', 'width=500, height=500')">
				</td>
			</tr>
		</table>
		
 		<input type="hidden" name="num" value="<%=num%>">
	</form>
</body>
</html>