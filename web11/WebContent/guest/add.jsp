<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../template/header.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<h1>입력페이지</h1>
	<form action="insert.jsp" method="post">
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
				<td>금액</td>
				<td><input type="text" name="pay"> </td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="입 력">
					<input type="reset" value="취 소">
				</td>
			</tr>
		</table>
	</form>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>





















