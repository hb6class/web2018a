<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*, java.util.ArrayList, java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
// db작업
	String keyword=request.getParameter("keyword");
	String search=request.getParameter("search");
	String sql="SELECT ROWNUM AS RN, SABUN, NAME, NALJA, PAY FROM GUEST";
	if(keyword!=null)sql+=" where "+search+" like '%"+keyword+"%'";

	String driver=application.getInitParameter("driver");
	String url=application.getInitParameter("url");
	String user=application.getInitParameter("user");
	String password=application.getInitParameter("password");
	
	ArrayList<HashMap> list = new ArrayList<HashMap>();
	
	Connection conn=null;
	Statement stmt=null;
	ResultSet rs=null;

	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		rs=stmt.executeQuery(sql);
		while(rs.next()){
			HashMap map = new HashMap();
			map.put("rn", rs.getInt(1));
			map.put("sabun", rs.getInt(2));
			map.put("name", rs.getString(3));
			map.put("nalja", rs.getDate(4));
			map.put("pay", rs.getInt(5));
			list.add(map);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
%>
<body>
	<table>
		<tr>
			<td><img alt="logo" src="<%=application.getContextPath()%>/imgs/logo.jpg"></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#cccccc">
				<a href="<%=application.getContextPath()%>">[HOME]</a>
				<a href="<%=application.getContextPath()%>/guest/list.jsp">[GUEST]</a>
				<a href="#">[LOGIN]</a>
			</td>
		</tr>
		<tr>
			<td align="center">
				<h1>리스트페이지</h1>
				<hr>
				<table>
					<tr>
						<th>번호</th>
						<th>사번</th>
						<th>이름</th>
						<th>날짜</th>
						<th>금액</th>
					</tr>
					<%
					for(int i=0; i<list.size(); i++){
						HashMap hmap=list.get(i);
					%>
					
					<tr>
						<td><%=hmap.get("rn") %></td>
						<td><%=hmap.get("sabun") %></td>
						<td><a href="detail.jsp?sabun=<%=hmap.get("sabun") %>"><%=hmap.get("name") %></a></td>
						<td><%=hmap.get("nalja") %></td>
						<td><%=hmap.get("pay") %></td>
					</tr>
					
					<%
					}
					%>
				</table>
				<hr>
				<form action="list.jsp">
					<select name="search">
						<option value="name">이름</option>
						<option value="sabun">사번</option>
					</select>
					<input type="text" name="keyword">
					<input type="submit" value="검색">
				</form>
				<hr>
				<a href="add.jsp">[입 력]</a>
			</td>
		</tr>
		<tr>
			<td>
			Copyright &copy; 비트캠프 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>