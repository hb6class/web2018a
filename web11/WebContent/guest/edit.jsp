<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.day07.bean.GuestBean"></jsp:useBean>
	<jsp:setProperty property="sabun" name="bean"/>
	<jsp:setProperty property="name" name="bean"/>
	<jsp:setProperty property="pay" name="bean"/>
	
	<jsp:include page="../template/header.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
		<h1>����������</h1>
		<form action="update.jsp" method="post">
			<table width="80%">
				<tr>
					<td>���</td>
					<td><input type="text" name="sabun" value="<%=bean.getSabun()%>" readonly="readonly"> </td>
				</tr>
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" value="<%=bean.getName()%>"> </td>
				</tr>
				<tr>
					<td>�ݾ�</td>
					<td><input type="text" name="pay" value="<%=bean.getPay()%>"> </td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="����">
						<input type="submit" value="���">
					</td>
				</tr>
			</table>
		</form>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>




















