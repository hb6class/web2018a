<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String method=request.getMethod();
	System.out.println(method);
	String msg1=request.getParameter("id");
	String msg2=request.getParameter("pw");
	
	%>
	<h1>param id : <%=msg1 %></h1>
	<h1>param pw : <%=msg2 %></h1>
</body>
</html>