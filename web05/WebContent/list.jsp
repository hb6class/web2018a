<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.day05.util.MyOracle, java.sql.*" errorPage="../err.jsp"%>
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
				<h1>�系 �Խ���</h1>
				<table border="1" cellspacing="0" width="80%" align="center">
					<tr>
						<th width="80">�۹�ȣ</th>
						<th>����</th>
						<th width="100">��¥</th>
						<th width="100">�۾���</th>
					</tr>
				<%
				String sql="SELECT NUM,SUB,NALJA,NAME FROM BBS NATURAL JOIN BBS_USER ORDER BY NUM DESC";
				Connection conn=MyOracle.getConection();
				try{
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
				%>
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><a href="detail.jsp?idx=<%=rs.getInt(1) %>"><%=rs.getString(2) %></a></td>
						<td><%=rs.getDate(3) %></td>
						<td><%=rs.getString(4) %></td>
					</tr>
				<%
				}
				}finally{
					conn.close();
				}
				%>
				</table>
				<a href="add.jsp">�� ��</a>
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














