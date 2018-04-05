<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String empno=request.getParameter("empno");
	String sal=request.getParameter("sal");
	String comm=request.getParameter("comm");
	String sql="update emp set sal="+sal+",comm="+comm+" where empno="+empno;
	System.out.println(sql);
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
	Statement stmt=conn.createStatement();
	stmt.executeUpdate(sql);
	conn.close();
	response.sendRedirect("page4.jsp?empno="+empno);
	%>
</body>
</html>













