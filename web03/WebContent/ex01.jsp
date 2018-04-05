<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp page</h1>
	<p><a href="ex02.jsp?id=1234">link1</a></p>
	<p><a href="ex02.jsp?id=abcd&pw=1234">link2</a></p>
	<%
	Writer myOut=out;
	myOut.write("myOut print1");
	myOut.write("myOut print2");
	myOut.write("myOut print3");
	
	PrintWriter myPrint = new PrintWriter(myOut);
	myPrint.println("myPrint print1");
	myPrint.println("myPrint print2");
	myPrint.println("myPrint print3");
	myPrint.println("myPrint print4");
	
	%>
</body>
</html>










