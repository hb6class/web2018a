<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<%
	out.println("<title>자바로제목</title>");
	%>

</head>
<body>
	<!-- html주석 -->
	<!-- 
	html여러줄 주석 
	-->
	<h1>html로 작성</h1>
	<% 
	// 스크립트릿
	// jsp한줄 주석
	/* 
	 jsp여러줄 주석
	*/
		out.println("<h1>java로 작성</h1>");
	for(int i=0; i<10; i++){
	%>
	
	<p>내용</p>
	
	<%
	}
	%>
	
	
</body>
</html>










