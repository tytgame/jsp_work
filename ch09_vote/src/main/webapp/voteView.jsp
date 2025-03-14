<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch09.*, java.util.*" %>
<jsp:useBean id="vDao" class="ch09.VoteDao" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>투표 결과 페이지</h1>
     <table border="1">
        <tr>
            <td colspan="4">Q : 질문</td>
        </tr>
        <tr>
            <td colspan="3">총 투표자 : 투표자 다 합친 값</td>
            <td><b>count</b></td>
        </tr>
  <%--        
  
  			<%

        	
             ArrayList<VoteItem> alist = vDao.getItem(num);
        									// 1. 이 메소드를 쓰는게 맞는가?
        									//		맞다면 int값에 뭘 넣어야 하는지
        									// 2. 다른 방법 ( ArrayList는 아님)
        									
        									// 수업에서 사용한 방법 말고 다른 방법(이 방법)으로 해볼수는 없을까?
        									// 생각해보기
         for(int i=0;i<alist.size();i++) {
        		VoteItem vitem = alist.get(i);
        		int num = vitem.getItemnum()+1;	// 항목 번호
        		String[] itemName = vitem.getItem();
        		int itemCount = vitem.getCount();
        		
        		
				out.print("<tr>");
				out.print("		<td>" + num + "</td>");
				out.print("		<td>" +	itemName + "</td>");
				out.print("		<td>" + "그래프" + "</td>");
				out.print("		<td>" + itemCount + "</td>");
				out.print("</tr>");
        	}
       
        
        %>
 --%>
    </table>

    <input type="button" onclick="window.close()" value="닫기">
</body>
</html>