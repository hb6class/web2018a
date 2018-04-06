<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" errorPage="../err.jsp"%>
<%@ page import="com.day05.util.MyOracle"%>
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
				<h1>사원목록</h1>
				<a href="add.jsp">사원등록</a>
				<ol>
				<%
				
				String sql="SELECT * FROM BBS_USER ORDER BY SABUN";
				
				Connection conn=null;
				Statement stmt=null;
				ResultSet rs=null;
				try{
					conn=MyOracle.getConection();
					stmt=conn.createStatement();
					rs=stmt.executeQuery(sql);
					while(rs.next()){
				%>
					<li><%=rs.getInt(1) %>:<%=rs.getString(2) %></li>
				<%
					}
				}finally{
					conn.close();
				}
				%>
				</ol>
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