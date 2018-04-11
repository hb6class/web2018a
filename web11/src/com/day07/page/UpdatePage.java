package com.day07.page;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.day07.util.MyOracle;

public class UpdatePage extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String param1=req.getParameter("sabun");
		String param2=req.getParameter("name");
		String param3=req.getParameter("pay");
		// 유효성검사
		//~~~
		int sabun=Integer.parseInt(param1);
		String name=param2.trim();
		int pay=Integer.parseInt(param3.trim());
		
//		String sql="update guest set name='"
//					+name+"',pay="+pay+" where sabun="+sabun;
//		param3="1 where 1=1 --";
		String sql2="update guest set name='"+param2+"',pay="+param3+" where sabun="+param1;
		System.out.println(sql2);
//		Statement stmt=null;
		String sql="update guest set name=?,pay=? where sabun=?";
		PreparedStatement pstmt=null;
		int result=0;
		try {
//			stmt=MyOracle.getConnection().createStatement();
//			result=stmt.executeUpdate(sql);
			pstmt=MyOracle.getConnection().prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, sabun);
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
				try {
					if(pstmt!=null)pstmt.close();
					MyOracle.getConnection().close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		if(result>0){
			resp.sendRedirect("detail.jsp?sabun="+sabun);
		}else{
			resp.sendRedirect("edit.jsp?sabun="+sabun+"&name="+name+"&pay="+pay);			
		}
		
	}
}



















