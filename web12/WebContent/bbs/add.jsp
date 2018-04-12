<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.day08.dao.BbsDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
	<jsp:useBean id="bean" class="com.day08.bean.BbsBean" scope="request"></jsp:useBean>
<%
	String method=request.getMethod();
	System.out.println(method);
	if("POST".equals(method)){
		BbsDao dao = new BbsDao();
		int sabun=bean.getSabun();//Integer.parseInt((String)request.getAttribute("sabun"));
		String sub=bean.getSub();//(String)request.getAttribute("sub");
		String content=bean.getContent();//(String)request.getAttribute("content");
		System.out.println(sabun+":"+sub+":"+content);
		dao.insert(sabun,sub,content);
		//response.sendRedirect("index.jsp?pg=bbs&action=list");
		out.println("<h1>입력성공</h1>");
		return;
	}
%>
<body>
	<h1>입력페이지</h1>
	<form method="post">
	<input type="hidden" name="pg" value="bbs">
	<input type="hidden" name="action" value="add">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="sub"> </td>
			</tr>
			<tr>
				<td>사번</td>
				<td><input type="text" name="sabun"> </td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="content" rows="5" cols="20"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="입 력">
					<input type="reset" value="취 소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>




