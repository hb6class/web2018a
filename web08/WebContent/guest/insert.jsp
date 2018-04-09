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
	//get방식일때 한글처리
	// tomcat server -> server.xml
	// <Connector connectionTimeout="20000" port="8080" 엘리먼트를 찾아
	// 속성에 URIEncoding="euc-kr"추가
	//post방식일때 한글처리
	request.setCharacterEncoding("EUC-KR");
	
	String param1=request.getParameter("sabun").trim();
	String param2=request.getParameter("name").trim();
	String param3=request.getParameter("pay").trim();
	
	int sabun=Integer.parseInt(param1);
	String name=param2;
	int pay =Integer.parseInt(param3);
	
	String sql ="insert into guest values ("+sabun+",'"+name+"',sysdate,"+pay+")";
	String driver = application.getInitParameter("driver");
	String url = application.getInitParameter("url");
	String user = application.getInitParameter("user");
	String password=application.getInitParameter("password");
	
	Connection conn=null;
	Statement stmt=null;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		int result=stmt.executeUpdate(sql);
		if(result>0)response.sendRedirect("list.jsp");
		else response.sendRedirect("add.jsp");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
	
</body>
</html>