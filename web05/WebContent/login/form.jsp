<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="1180" align="center">
		<tr>
			<td>
				<img src="/web05/imgs/logo.jpg">
			</td>
		</tr>
		<tr>
			<td bgcolor="#cccccc" align="center">
			|	<a href="/web05/index.jsp">H O M E</a> ||
				<a href="/web05/user/list.jsp">사원등록</a> ||
				<a href="/web05/bbs/list.jsp">게 시 판</a> ||
				<%
				Boolean login=(Boolean)session.getAttribute("result");
				if(login==null || login==false){
				%>
				<a href="/web05/login/form.jsp">로 그 인</a> |
				<%}else{ %>
				<a href="/web05/login/logout.jsp">로그아웃</a> |
				<%} %>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<h1>로그인 페이지</h1>
				<form action="login.jsp" method="post">
				<table>
					<tr>
						<td>사번</td>
						<td><input type="text" name="sabun"> </td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name"> </td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인">
							<input type="reset" value="취 소">
						</td>
					</tr>
				</table>
				</form>
				<br><br><br>
			</td>
		</tr>
		<tr>
			<td bgcolor="#cccccc">
			Copyright (c) 비트캠프 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>