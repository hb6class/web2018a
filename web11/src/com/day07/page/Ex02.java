package com.day07.page;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex02 extends HttpServlet{
	// ¼­ºí¸´(3.x)

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		resp.setContentType("text/html; charset=EUC-KR");
		resp.setCharacterEncoding("EUC-KR");
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>");
		Ex03 ex3= new Ex03();
		ex3.doGet(req, resp);
		out.println("Non jsp PAGE");
		out.println("</h1>");
		out.println("<form action=\"ex03.html\" method=\"post\">");
		out.println("<input type=\"text\" name=\"id\">");
		out.println("<input type=\"submit\" value=\"send\">");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
		out.flush();
		out.close();
	}
	
}



































