<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String sabun=request.getParameter("idx");
	String sql="select * from guest where sabun="+sabun;
	GuestBean bean = new GuestBean();
	try{
		stmt=MyOracle.getConnection().createStatement();
		rs=stmt.executeQuery(sql);
		if(rs.next()){
			bean.setSabun(rs.getInt("sabun"));
			bean.setName(rs.getString("name"));
			bean.setNalja(rs.getDate("nalja"));
			bean.setPay(rs.getInt("pay"));
		}
	}catch(Exception e){e.printStackTrace();}finally{
		MyOracle.getConnection().close();
	}
%>
<body>
	<%
	String imgPath="..";
	String linkPath=".";
	%>
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
		<h1>상세정보</h1>
		<table>
			<tr>
				<td>사번</td>
				<td><%=bean.getSabun() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=bean.getName() %></td>
			</tr>
			<tr>
				<td>날짜</td>
				<td><%=bean.getNalja() %></td>
			</tr>
			<tr>
				<td>금액</td>
				<td><%=bean.getPay() %></td>
			</tr>
		</table>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>