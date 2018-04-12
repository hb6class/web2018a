<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.day08.dao.BbsDao" %>
<%@ page import="com.day08.bean.BbsBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
	String method=request.getMethod();
	BbsDao dao = new BbsDao();
	int num=Integer.parseInt(request.getParameter("num"));
	if("POST".equals(method)){
		String sub=request.getParameter("sub");
		String content=request.getParameter("content");
		int result=dao.update(num,sub,content);
		if(result>0){
			response.sendRedirect("detail.jsp?num="+num);
			return;
		}
	}
	BbsBean bean=dao.listOne(num);
%>
<body>
	<h1>수정페이지</h1>
	<form method="post">
		<input type="hidden" name="pg" value="bbs">
		<input type="hidden" name="action" value="edit">
		<table>
			<tr>
				<td bgcolor="#cccccc">글번호</td>
				<td><%=bean.getNum() %><input type="hidden" name="num" value="<%=bean.getNum()%>"></td>
				<td bgcolor="#cccccc">사번</td>
				<td><%=bean.getSabun() %></td>
				<td bgcolor="#cccccc">날짜</td>
				<td><%=bean.getNalja()%></td>
			</tr>
			<tr>
				<td bgcolor="#cccccc">제목</td>
				<td colspan="5"><input type="text" name="sub" value="<%=bean.getSub()%>"></td>
			</tr>
			<tr>
				<td height="200" bgcolor="#cccccc">내용</td>
				<td colspan="5"><textarea name="content" rows="15" cols="20"><%=bean.getContent() %></textarea> </td>
			</tr>
			<tr>
				<td colspan="6">
					<input type="submit" value="수 정">
					<input type="reset" value="취 소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>