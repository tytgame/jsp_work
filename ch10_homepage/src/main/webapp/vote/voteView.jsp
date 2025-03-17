<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vote.*, java.util.*" %>
<jsp:useBean id="vDao" class="vote.VoteDao" />
<%
	int num = 0;
	if(!(request.getParameter("num") == null || request.getParameter("num").equals("")))      
		num = Integer.parseInt(request.getParameter("num"));
	
	int sum = vDao.sumCount(num);  // count합계
	ArrayList<VoteItem> vitem = vDao.getView(num);  // 각 항목의 count
	VoteList vlist = vDao.getOneVote(num); // q를 가져오기 위해
	
	String q = vlist.getQuestion();
	Random r = new Random();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>투표 결과 페이지</h1>
	<div class="m30">
     <table border="1" class="table">
        <tr>
            <td colspan="4">Q : <%=q %></td>
        </tr>
        <tr>
            <td colspan="3">총 투표자 : <%=sum %>표</td>
        </tr>
        <tr>
				<th>번호</th>
				<th>item</th>
				<th>그래프</th>
				<th>득표수</th>
			</tr>
  <%
		for(int i=0; i<vitem.size(); i++) {
			VoteItem v = vitem.get(i);
			String[] item = v.getItem();
			
			// rgb값 추출
			int rgbR = r.nextInt(256); // 0~255
			int rgbG = r.nextInt(256);
			int rgbB = r.nextInt(256);
			String rgb = "rgb(" + rgbR + "," + rgbG + "," + rgbB + ")";
			
			// 각 항목이 몇 %인지
			int ratio = (int)(Math.ceil((v.getCount() / (double)sum) * 100));
		%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=item[0] %></td>
				<td>
					<table width="<%=ratio%>" height="15" align="left">
						<tr>
							<td bgcolor="<%=rgb%>" style="border:none"></td>
						</tr>
					</table>
				</td>
				<td><%=v.getCount() %></td>
			</tr>
		<%
		}
		%>
		</table>
		</div>

    <input type="button" onclick="window.close()" value="닫기">
</body>
</html>