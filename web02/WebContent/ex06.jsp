<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	public void func01(){
	 
	}
%>
<body>
	<% // 스크립트릿의 내장객체 - 
	String prot=request.getProtocol();
	System.out.println("protocol:"+prot);
	String addr=request.getRemoteAddr();
	System.out.println("addr:"+addr);
	String addr2=request.getLocalAddr();
	System.out.println("LocalAddr:"+addr2);
	int port=request.getRemotePort();
	System.out.println("port:"+port);
	int port2=request.getLocalPort();
	System.out.println("LocalPort:"+port2);
	String uri=request.getRequestURI();
	System.out.println("uri:"+uri);
	StringBuffer url=request.getRequestURL();
	System.out.println("url:"+url);
	String name=request.getContextPath();
	System.out.println("ContextName:"+name);
	%>
</body>
</html>















