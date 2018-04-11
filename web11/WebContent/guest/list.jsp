<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.day07.bean.GuestBean" %>
<%@ page import="com.day07.util.MyOracle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
ArrayList<GuestBean> list = new ArrayList<GuestBean>();
	Connection conn=MyOracle.getConnection();
	try{
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select rownum as rn, sabun,name,nalja,pay from guest");
		while(rs.next()){
			GuestBean bean = new GuestBean();
			bean.setRn(rs.getInt("rn"));
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
			list.add(bean);
		}
	}finally{
		if(conn!=null)conn.close();
	}

%>
<body>
	<jsp:include page="../template/header.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<h1>목록 페이지</h1>
	<table	width="80%" border="1" cellspacing="0">
		<tr>
			<th>글번호</th>
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<% for(GuestBean bean:list){ %>
		<tr>
			<td><%=bean.getRn() %></td>
			<td><%=bean.getSabun()%></td>
			<td><a href="detail.jsp?sabun=<%=bean.getSabun()%>"><%=bean.getName() %></a></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%} %>
	</table>
	<a href="add.jsp">[입 력]</a>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>