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
				<a href="/web05/user/list.jsp">������</a> ||
				<a href="/web05/bbs/list.jsp">�� �� ��</a> ||
				<%
				Boolean login=(Boolean)session.getAttribute("result");
				if(login==null || login==false){
				%>
				<a href="/web05/login/form.jsp">�� �� ��</a> |
				<%}else{ %>
				<a href="/web05/login/logout.jsp">�α׾ƿ�</a> |
				<%} %>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<h1>�Է�������</h1>
				<form action="../bbsadd.jsp">
				<table align="center">
					<tr>
						<td width="100" bgcolor="#cccccc">����</td>
						<td><input type="text" name="sub" size="45"> </td>
					</tr>
					<tr>
						<td bgcolor="#cccccc">���</td>
						<td><input type="text" value="<%=session.getAttribute("sabun") %>" name="sabun" size="45" readonly="readonly"> </td>
					</tr>
					<tr>
						<td colspan="2">
						<textarea rows="5" cols="65" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="�ۼ�">
							<input type="reset" value="���">
						</td>
					</tr>
				</table>
				</form>
				<br><br><br>
			</td>
		</tr>
		<tr>
			<td bgcolor="#cccccc">
			Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>