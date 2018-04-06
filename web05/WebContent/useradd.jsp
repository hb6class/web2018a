<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.day05.util.MyOracle"%>
<%@ page errorPage="err.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String param1=request.getParameter("sabun");
	String param2=request.getParameter("name");
	
	int sabun=Integer.parseInt(param1.trim());
	String name=param2.trim();
	
	String sql ="INSERT INTO BBS_USER VALUES ("+sabun+",'"+name+"')";
	
	Connection conn=null;
	Statement stmt=null;
	
	try{
		conn=MyOracle.getConection();
		stmt=conn.createStatement();
		int cnt=stmt.executeUpdate(sql);
		if(cnt>0)response.sendRedirect("user/list.jsp");
		else response.sendRedirect("user/add.jsp");
	}finally{
		conn.close();
	}
	%>
</body>
</html>




















