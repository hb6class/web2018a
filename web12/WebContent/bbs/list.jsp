<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.day08.bean.BbsBean" %>
<%@ page import="com.day08.dao.BbsDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	BbsDao dao = new BbsDao();
	int tot = dao.getTot();
	ArrayList<BbsBean> list = dao.getBbsList();
	
%>
<body>
	<h1>게시판(<%=tot %>개)</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<th width="120">글번호</th>
			<th>제목</th>
			<th>사번</th>
			<th width="120">날짜</th>
		</tr>
		<% for(BbsBean bean :list){  %>
		<tr>
			<td><%=bean.getNum() %></td>
			<td><a href="index.jsp?pg=bbs&action=detail&num=<%=bean.getNum() %>"><%=bean.getSub() %></a></td>
			<td><%=bean.getSabun() %></td>
			<td><%=bean.getNalja() %></td>
		</tr>
		<%} %>
	</table>
	<form>
		<input type="hidden" name="pg" value="bbs">
		<input type="hidden" name="action" value="add">		
		<input type="submit" value="입 력">
	</form>
</body>
</html>










