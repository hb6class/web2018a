<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, oracle.jdbc.driver.OracleDriver"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="800" align="center">
		<tr>
			<td colspan="2">
				<a href="main.jsp">
				<img alt="logo" src="imgs/logo.png">
				</a>
			</td>
		</tr>
		<tr>
			<td width="150" height="600" bgcolor="#9999ff">
				<p><a href="page1.jsp">인사말</a></p>
				<p><a href="page2.jsp">오시는길</a></p>
				<p><a href="page3.jsp">게시판</a></p>
				<p><a href="#">방명록</a></p>
				<p><a href="#">등등</a></p>
			</td>
			<td valign="top">
			<!-- 내용들어갈 부분 -->
				<h1>상세보기</h1>
			<%
			String param=request.getParameter("empno");
			String sql="select * from emp where empno="+param;
			String url="jdbc:oracle:thin:@localhost:1521:xe";
			String id="scott";
			String pw="tiger";
			
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			//try{
			new OracleDriver();
			try{
				conn=DriverManager.getConnection(url,id,pw);
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				if(rs.next()){
			%>
				<table>
					<tr>
						<td width="150" bgcolor="#cccccc">사번</td>
						<td><%=rs.getInt(1) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">이름</td>
						<td><%=rs.getString(2) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">직책</td>
						<td><%=rs.getString(3) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">직속상관</td>
						<td><%=rs.getInt(4) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">입사일</td>
						<td><%=rs.getDate(5) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">연봉</td>
						<td><%=rs.getInt(6) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">성과급</td>
						<td><%=rs.getInt(7) %></td>
					</tr>
					<tr>
						<td width="150" bgcolor="#cccccc">부서번호</td>
						<td><%=rs.getInt(8) %></td>
					</tr>
				
				</table>
				<a href="page7.jsp?empno=<%=rs.getInt(1) %>">수정</a>
			<%
				}
			}catch(Exception e){
				out.println("<h2>잠시 후 재접속 바랍니다</h2>");
			}finally{
				if(rs!=null){rs.close();}
				if(stmt!=null){stmt.close();}
				if(conn!=null){conn.close();}
			}
			%>
				
			<!-- 내용들어갈 부분 끝 -->
			</td>
		</tr>
		<tr>
			<td colspan="2"  bgcolor="blue">
			서울특별시 서초구 서초대로74길33 비트빌 3층 | 사업자등록번호 220-81-29726 | 대표이사 조현정 | 법인명 (주)비트컴퓨터
			<br>
			TEL 02-3486-3456 | FAX 02-3486-7890 | 통신판매업 신고번호 서울서초 2003-02577호
			<br>
			COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
			</td>
		</tr>
	
	
	
	</table>
</body>
</html>