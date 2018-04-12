package com.day08.page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.day08.dao.BbsDao;

public class DeletePage extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String num=req.getParameter("num");
		BbsDao dao = new BbsDao();
		dao.delete(Integer.parseInt(num));
		resp.sendRedirect("../index.jsp?pg=bbs&action=list");
	}
}














