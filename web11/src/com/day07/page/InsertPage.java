package com.day07.page;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.day07.util.MyOracle;

public class InsertPage extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String param1=req.getParameter("sabun");
		String param2=req.getParameter("name");
		String param3=req.getParameter("pay");
		int sabun=Integer.parseInt(param1.trim());
		String name=param2.trim();
		int pay=Integer.parseInt(param3.trim());
		
		String sql="Insert into guest values ("+sabun+",'"+name+"',sysdate,"+pay+")";
		
		Connection conn=MyOracle.getConnection();
		Statement stmt=null;
		int result=0;
		try {
			stmt=conn.createStatement();
			result=stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
				try {
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		
		if(result>0)resp.sendRedirect("list.jsp");
		else resp.sendRedirect("add.jsp");
	}
}





















