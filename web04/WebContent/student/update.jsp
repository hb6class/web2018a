<%@page import="com.sun.org.apache.regexp.internal.recompile"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	public boolean validate(String msg){ // 숫자로만 false, 문자 true
		for(int i=0; i<msg.length(); i++){
			char temp=msg.charAt(i);
			if(!Character.isDigit(temp)){
				return true;
			}
		}
		return false;
	}
%>
<body>
	<%
	String param1=request.getParameter("num");
	//String param2=request.getParameter("kor").trim();
	//String param3=request.getParameter("eng").trim();
	//String param4=request.getParameter("math").trim();
	String[] msgs={"kor","eng","math"};
	String[] params=new String[msgs.length];
	
	for(int i=0; i<msgs.length; i++){
		params[i]=request.getParameter(msgs[i]).trim();
		if(params[i].length()==0){
					response.sendRedirect("edit2.jsp?num="+param1+"&err="+i+"&errmsg=2");
					return;		
		}else if(validate(params[i])){
					response.sendRedirect("edit2.jsp?num="+param1+"&err="+i+"&errmsg=3");
					return;		
		}else if(Integer.parseInt(params[i])>100){
					response.sendRedirect("edit2.jsp?num="+param1+"&err="+i+"&errmsg=1");
					return;			
		}
	}
	
	int num=Integer.parseInt(param1);
	int kor=Integer.parseInt(params[0]);
	int eng=Integer.parseInt(params[1]);
	int math=Integer.parseInt(params[2]);
	
	String sql="UPDATE STUDENT SET KOR="+kor+",ENG="+eng+",MATH="+math+" WHERE NUM="+num;
	//System.out.println(sql);
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	Connection conn=null;
	Statement stmt=null;
	
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		int result=stmt.executeUpdate(sql);
		
		if(result>0)response.sendRedirect("edit.jsp");
		else response.sendRedirect("edit2.jsp?num="+num);
	}catch(Exception e){
		response.sendRedirect("edit2.jsp?num="+num);
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	%>
</body>
</html>
























