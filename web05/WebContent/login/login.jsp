<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.day05.util.MyOracle, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
			<%
			int sabun=Integer.parseInt(request.getParameter("sabun"));
			
			String name=request.getParameter("name");
			
			String sql = "select count(*) from bbs_user where sabun="+sabun
					+" and name='"+name+"'";
			
			int cnt=0;
			
			Connection conn=MyOracle.getConection();
			try{
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				if(rs.next()){
					cnt=rs.getInt(1);
				}
			}finally{
				conn.close();
			}
			if(cnt>0){
				session.setAttribute("result", true);
				session.setAttribute("sabun", sabun);
			}	
			%>
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
			<%if(cnt>0){ %>
				<h1>로그인 성공</h1>
			<%}else{ %>
				<h1>로그인 실패</h1>
			<%} %>
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