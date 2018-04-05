<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	 Enumeration<String> names=request.getParameterNames();
	 while(names.hasMoreElements()){
		 //System.out.println(names.nextElement());
		 String paramName=names.nextElement();
		 String[] values=request.getParameterValues(paramName);
		 for(int i=0; i<values.length; i++){
			values[i]=values[i].replace("\r\n", "<br>");
		 	out.println("<h1>"+paramName+":"+values[i]+"</h1>");
		 }
	 }
	 
	 Map<String,String[]> map=request.getParameterMap();
	 Set<String> key=map.keySet();
	 Iterator<String> ite=key.iterator();
	 while(ite.hasNext()){
		 String pnm=ite.next();
		 System.out.println(pnm+":"+request.getParameter(pnm));
	 }
	
		//String param1= request.getParameter("param1");
		//String param2= request.getParameter("param2");
		//String param3= request.getParameter("param3");

	%>
</body>
</html>






















