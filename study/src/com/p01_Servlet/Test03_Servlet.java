package com.p01_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test03_Servlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
		System.out.println("Test03 서블랫 init 메소드가 호됨");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Test03 Servlet doGet 메소드 호출됨");
		resp.setContentType("text/html; charset=utf-8" );
		
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>");
		out.print("doGet 메소드가 응답함");
		out.print("</h1>");
		out.print("</body>");
		out.print("</html>");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Test03 Servlet doPost 메소드 호출됨");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");

		out.print("<h1>");
		out.print("doPost메소드가 응답함");
		out.print("</h1>");

		out.print("</body>");
		out.print("</html>");
	}
	
	@Override
	public void destroy() {
		System.out.println("Test03 Servlet destroy 메소드 호출됨");
	}
	
	
}
