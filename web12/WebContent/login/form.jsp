<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�α��� ������</h1>
	<form action="index.jsp" method="post">
		<input type="hidden" name="pg" value="login">
		<input type="hidden" name="action" value="result">	
		<table>
			<tr>
				<td>���:</td>
				<td><input type="text" name="sabun"></td>
			</tr>
			<tr>
				<td>�̸�:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�α���">
					<input type="reset" value="�� ��">
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>