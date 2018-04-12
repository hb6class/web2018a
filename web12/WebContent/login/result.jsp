<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.day08.dao.UserDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<jsp:useBean id="bean" class="com.day08.bean.BbsBean" scope="request"></jsp:useBean>
<jsp:useBean id="login" class="com.day08.bean.UserBean" scope="session"></jsp:useBean>
<%
	int sabun=bean.getSabun();
	String name=bean.getName();
	UserDao dao=new UserDao();
	boolean result=dao.login(sabun, name);
	login.setSabun(sabun);
	login.setResult(result);
%>

<body>
	<h1>로그인(<%=result %>)</h1>
</body>
</html>