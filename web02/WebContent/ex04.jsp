<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단을 표에 넣어 출력하세요</h1>
	<table width="800" border="1" cellspacing="0">
		<tr>
		<%for(int i=2; i<10; i++){ %>
			<td><% out.println(i); %>단</td>
		<%} %>
		</tr>
		<% for(int j=1; j<10; j++){ %>
		<tr>
		<% for(int i=2; i<10; i++){ %>
			<td>
			<%=i %>*<% out.print(j); %>=<%=i*j %>
			</td>
		<%} %>
		</tr>
		<%} %>
	
	</table>
</body>
</html>