<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.day08.dao.BbsDao" %>
<%@ page import="com.day08.bean.BbsBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	BbsDao dao = new BbsDao();
	dao.plusCnt(num);
	BbsBean bean=dao.listOne(num);
%>
<body>
	<h1>상세페이지</h1>
	<table>
		<tr>
			<td bgcolor="#cccccc">글번호</td>
			<td><%=bean.getNum() %></td>
			<td bgcolor="#cccccc">사번</td>
			<td><%=bean.getSabun() %></td>
			<td bgcolor="#cccccc">날짜</td>
			<td><%=bean.getNalja() %></td>
		</tr>
		<tr>
			<td bgcolor="#cccccc">제목</td>
			<td colspan="5">
			<%=bean.getSub() %>
			</td>
		</tr>
		<tr>
			<td height="200" bgcolor="#cccccc">내용</td>
			<td colspan="5">
			<%=bean.getContent() %>
			</td>
		</tr>
		<tr>
			<td colspan="3">
			<form action="index.jsp">
				<input type="hidden" name="num" value="<%=bean.getNum() %>">
				<input type="hidden" name="pg" value="bbs">
				<input type="hidden" name="action" value="edit">
				
				<input type="submit" value="수정">
			</form>
			</td>
			<td colspan="3">
			<form action="bbs/delete.jsp" method="post">
				<input type="hidden" name="num" value="<%=bean.getNum() %>">
				<input type="submit" value="삭제">
			</form>
			</td>
		</tr>
	</table>
</body>
</html>









