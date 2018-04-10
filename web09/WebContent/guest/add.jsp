<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	System.out.println(request.getMethod());
	if("POST".equals(request.getMethod())){
		request.setCharacterEncoding("EUC-KR");
		String sabun=request.getParameter("sabun");
		String name=request.getParameter("name");
		String pay=request.getParameter("pay");
		String sql="insert into guest values ("+sabun+",'"+name+"',sysdate,"+pay+")";
		int cnt=0;		
		try{
			stmt=MyOracle.getConnection().createStatement();
			cnt=stmt.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			MyOracle.getConnection();
		}
		if(cnt>0)response.sendRedirect("list.jsp");
		else response.sendRedirect("add.jsp");
		return;
	}
%>
<body>
	<%
	String imgPath="..";
	String linkPath=".";
	%>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<h1>입력페이지</h1>
	<form method="post">
		<table>
			<tr>
				<td>사번</td>
				<td><input type="text" name="sabun"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>금액</td>
				<td><input type="text" name="pay"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="입력">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
		
	</form>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>