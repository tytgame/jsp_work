<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="vDao" class="vote.VoteDao"/>

<jsp:useBean id="vitem" class="vote.VoteItem"/>
<jsp:setProperty name="vitem" property="*"/>

<jsp:useBean id="vlist" class="vote.VoteList"/>
<jsp:setProperty name="vlist" property="*"/>
<%
	String sdate = request.getParameter("sdateY") + "-"
				  + request.getParameter("sdateM") + "-"
				  + request.getParameter("sdateD");

	String edate = request.getParameter("edateY") + "-"
				  + request.getParameter("edateM") + "-"
				  + request.getParameter("edateD");
	
	vlist.setSdate(sdate);
	vlist.setEdate(edate);
	
	boolean result = vDao.voteInsert(vlist, vitem);
	
	String msg = "설문추가에 실패했습니다";
	String url = "voteInsert.jsp";
	
	if(result) {
		msg = "설문 추가하였습니다";
		url = "voteList.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "voteList.jsp";
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>