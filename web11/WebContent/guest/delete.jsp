<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.day07.util.MyOracle" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="refresh" content="3,url=list.jsp">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.day07.bean.GuestBean"></jsp:useBean>
	<jsp:setProperty property="sabun" name="bean"/>
	
	<%
		String sql="delete from guest where sabun=?";
		PreparedStatement pstmt=null;
		int result=0;
		try{
			pstmt=MyOracle.getConnection().prepareStatement(sql);
			pstmt.setInt(1, bean.getSabun());
			result=pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			MyOracle.getConnection().close();
		}
	%>
	<jsp:include page="../template/header.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<jsp:include page="../template/menu.jsp">
		<jsp:param value=".." name="path"/>
	</jsp:include>
	<%	
	if(result>0){
	%>
	<h1>삭제 처리 되었습니다</h1>
	<%}else{ %>
	<h1>삭제 실패 - 다시 확인하세요</h1>
	<%} %>
	<jsp:output>test</jsp:output>
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>




















