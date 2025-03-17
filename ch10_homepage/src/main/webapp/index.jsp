<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.14.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="resources/css/body.css">
</head>
<body>
	<header>
		<div class="logo">
			<img src="https://www.tjoeun.co.kr/images/head_mcl_logo.jpg?v=20190918">
		</div>
		<nav>
			<ul class="nav">
				<li><a href="">소개</a></li>
				<li><a href="vote/voteList.jsp">투표 프로그램</a></li>
				<% if(id == null) { %>
					<li><a href="member/login.jsp">로그인</a></li>
				<% } else {%>
					<li><a href="member/logout.jsp">로그아웃</a></li>
				<%	}  %>
				</ul>
			</nav>
			<div>
				<% if(id != null) { %>
				<p>[ <%=id %> 님 로그인 상태 ]</p>
				<% } %>
			</div>
	</header>
	<article>
		<section>
            <img src="resources/img/slide1.jpg" alt="여행사진1" id="img02">
            <img src="resources/img/slide2.jpg" alt="여행사진2">
            <img src="resources/img/slide3.jpg" alt="여행사진3">
		</section>
	</article>
</body>
</html>