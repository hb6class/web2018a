<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String sabun=request.getParameter("sabun");
	String name=request.getParameter("name");

	String bbs="main.jsp";
	String pg=request.getParameter("pg");
	String action=request.getParameter("action");
	if(action!=null){
		bbs=pg+"/"+action+".jsp";
	}
%>
	<jsp:useBean id="bean" class="com.day08.bean.BbsBean" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
	
	<jsp:useBean id="login" class="com.day08.bean.UserBean" scope="session"></jsp:useBean>
<body>
	<table width="1024" align="center">
		<tr>
			<td width="70%">
				<img alt="logo" src="imgs/logo.jpg">
			</td>
			<td width="30%" align="center">
				<%
				if(login.isResult()){
					out.print(login.getSabun());
				%>�� ȯ���մϴ�
				<a href="index.jsp?pg=login&action=logout">logout</a>
				<%}else{ %>
				<a href="index.jsp?pg=login&action=form">login</a>
				<%} %>
				/
				<a href="#">join</a>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" bgcolor="#cccccc">
				<a href="index.jsp">[HOME]</a>
				<a href="index.jsp?pg=bbs&action=list">[�Խ���]</a>
				<a href="index.jsp?pg=login&action=form">[�α���]</a>
				<a href="index.jsp">[���ô±�]</a>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<!-- ������� -->
				<!-- <img alt="main" src="imgs/main.jpg" width="90%"> -->
				<jsp:include page="<%=bbs %>">
					<jsp:param value="<%=sabun %>" name="sabun"/>
					<jsp:param value="<%=name %>" name="name"/>
				</jsp:include>
			<!-- ���볡 -->
			</td>
		</tr>
		<tr>
			<td colspan="2">
			Copyright &copy; ��Ʈķ�� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>