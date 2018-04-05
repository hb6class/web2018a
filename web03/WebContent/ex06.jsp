<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>header 확인</h1>
	<%
		Enumeration<String> en=request.getHeaderNames();
		while(en.hasMoreElements()){
			String key=en.nextElement();
			//System.out.println(en.nextElement());
			Enumeration<String> values=request.getHeaders(key);
			while(values.hasMoreElements()){
				System.out.println(key+":"+values.nextElement());	
			}
		}
		//String contentType=request.getHeader("content");
		//System.out.println("content-Type:"+contentType);
	%>
</body>
</html>











