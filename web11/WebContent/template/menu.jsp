<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String path = request.getParameter("path");
    %>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="/web11/">HOME</a>
				<a href="<%=path %>/guest/list.jsp">게시판</a>
				<a href="<%=path %>/login/form.jsp">로그인</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<!-- 내용시작 -->