<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.day05.util.MyOracle, java.sql.*"%>
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
			<%
			
			int num=Integer.parseInt(request.getParameter("idx"));
			
			String name="";
			String sub="�������";
			String content="";
			java.sql.Date nalja=null;
			
			String sql="select num,sub,"
					+"(select name from bbs_user B where B.sabun=A.sabun)"
					+" as name,nalja,content from bbs A where num="+num;
			Connection conn=MyOracle.getConection();
			try{
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				if(rs.next()){
					num=rs.getInt(1);
					sub=rs.getString(2);
					name=rs.getString(3);
					nalja=rs.getDate(4);
					content=rs.getString(5);
				}
			}finally{
				conn.close();
			}
			content=content.replace("<", "&lt;");
			content=content.replace(">", "&gt;");
			content=content.replace("\r\n", "\n");
			content=content.replace("\n", "<br>");
			content=content.replace(" ", "&nbsp;");
			
			%>
				<h1><%=num %>�� �� �󼼺���</h1>
				<table width="80%" align="center">
					<tr>
						<td bgcolor="#cccccc">����</td>
						<td colspan="3"><%=sub %></td>
					</tr>
					<tr>
						<td bgcolor="#cccccc">�۾���</td>
						<td><%=name %></td>
						<td bgcolor="#cccccc">��¥</td>
						<td><%=nalja %></td>
					</tr>
					<tr>
						<td bgcolor="#cccccc" colspan="4">����</td>
					</tr>
					<tr>
						<td colspan="4"><%=content %></td>
					</tr>
				</table>
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