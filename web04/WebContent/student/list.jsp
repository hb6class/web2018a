<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>index.jsp</title>
</head>
<body>
	
	<table width="100%">
		<tr>
			<td colspan="6">
				<h1>성적관리프로그램(ver 0.6.0)</h1>
			</td>
		</tr>
		<tr bgcolor="#cccccc">
			<td> </td>
			<td bgcolor="gray" align="center" width="120">
						<a href="../"><font color="#ffffff">HOME</font></a></td>
			<td bgcolor="gray" align="center" width="120">
						<a href="./list.jsp"><font color="#ffffff">전체보기</font></a></td>
			<td bgcolor="gray" align="center" width="120">
						<a href="./add.jsp"><font color="#ffffff">학생등록</font></a></td>
			<td bgcolor="gray" align="center" width="120">
						<a href="./edit.jsp"><font color="#ffffff">성적입력</font></a></td>
			<td> </td>
		</tr>
		<tr>
			<td colspan="6" valign="top" align="center">
				<!-- content start -->
				<h1>학생성적 목록</h1>
				
				<table  width="80%" border="1" cellspacing="0">
					<tr>
						<th width="50">학번</th>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
						<th width="80">삭제</th>
					</tr>
					<%
					String url="jdbc:oracle:thin:@localhost:1521:xe";
					String id="scott";
					String pw="tiger";
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection conn=null;
					Statement stmt=null;
					ResultSet rs=null;
					try{
						conn=DriverManager.getConnection(url,id,pw);
						stmt=conn.createStatement();
						rs=stmt.executeQuery("SELECT NUM,NAME,KOR,ENG,MATH FROM STUDENT ORDER BY NUM");
						while(rs.next()){
					%>
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getInt(3) %></td>
						<td><%=rs.getInt(4) %></td>
						<td><%=rs.getInt(5) %></td>
						<td>
							<form action="delete.jsp" method="post">
								<input type="hidden" name="num" value="<%=rs.getInt(1) %>">
								<input type="submit" value="삭제">
							</form>
						</td>
					</tr>
					<%
						}
					}catch(Exception ex){
						System.out.println("list page 오류 - 확인바람");
					}finally{
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					}
					%>
				</table>
				
				<br><br><br>
				<!-- content end -->
			</td>
		</tr>
		<tr bgcolor="#cccccc">
			<td colspan="6">
				비트캠프 서울시 서초구 서초동 1327-15 비트아카데미빌딩｜ 사업자등록번호 : 214-85-24928
				<br>(주)비트컴퓨터 서초지점 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245
				<br>통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 권도혁
				<br>Copyright (c) 비트캠프 All rights reserved.
			</td>
		</tr>
	</table>
	
</body>
</html>