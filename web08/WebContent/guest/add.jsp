<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td><img alt="logo" src="<%=application.getContextPath()%>/imgs/logo.jpg"></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="<%=application.getContextPath()%>">[HOME]</a>
				<a href="<%=application.getContextPath()%>/guest/list.jsp">[GUEST]</a>
				<a href="#">[LOGIN]</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<h1>입력페이지</h1>
				<form action="insert.jsp" method="get">
					<p>
						사번:<input type="text" name="sabun">
					</p>
					<p>
						이름:<input type="text" name="name">
					</p>
					<p>
						금액:<input type="text" name="pay">
					</p>
						<input type="submit" value="입 력">
						<input type="reset" value="취 소">
				</form>
			</td>
		</tr>
		<tr>
			<td>
			Copyright &copy; 비트캠프 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>