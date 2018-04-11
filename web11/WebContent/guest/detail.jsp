<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.day07.util.MyOracle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<jsp:useBean id="bean" class="com.day07.bean.GuestBean"></jsp:useBean>
<jsp:setProperty property="sabun" name="bean"/>
<%
	//String param=request.getParameter("sabun");
	//int sabun=Integer.parseInt(param);
	
	//com.day07.bean.GuestBean bean=null;
	//bean=new com.day07.bean.GuestBean();
	String sql="select * from guest where sabun="+bean.getSabun();
	
	try{
		Statement stmt=MyOracle.getConnection().createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		while(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
	}finally{
		MyOracle.getConnection().close();
	}
%>
<body>
	<jsp:include page="../template/header.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
		<h1>상세보기</h1>
		<table width="80%" cellspacing="5">
			<tr>
				<td bgcolor="#cccccc">사번</td>
				<td><jsp:getProperty property="sabun" name="bean"/> </td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">이름</td>
				<td><jsp:getProperty property="name" name="bean"/> </td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">날짜</td>
				<td><jsp:getProperty property="nalja" name="bean"/> </td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">금액</td>
				<td><jsp:getProperty property="pay" name="bean"/> </td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="edit.jsp?sabun=<%=bean.getSabun()%>&name=<%=bean.getName()%>&pay=<%=bean.getPay()%>">수정</a>
					<a href="delete.jsp?sabun=<%=bean.getSabun()%>">삭제</a>
				</td>
			</tr>
		</table>	
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>










