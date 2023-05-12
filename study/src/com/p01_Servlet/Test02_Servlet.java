package com.p01_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02_Servlet extends HttpServlet{
	@Override
	public void init() throws ServletException {
		System.out.println("Test02_Servlet 서블랫 init 메소드가 실행되었습니다.");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Test02_Servlet 서블릿 service 메소드가 실행되었습니다.");
		if(req.getMethod().equals("GET")) {
			fn_get(req,resp);
		}else if(req.getMethod().equals("POST")) {
			fn_post(req,resp);
		}
		
	}

	private void fn_post(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("POST 메소드가 호출됨");
		resp.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		
		out.print("<h1>");
		out.print("fn_post메소드가 응답함");
		out.print("</h1>");

		out.print("</body>");
		out.print("</html>");
	}

	private void fn_get(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("GET 메소드가 호출됨");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>");
		out.print("fn_get메소드가 응답함");
		out.print("</h1>");
		out.print("</body>");
		out.print("</html>");	
	}
}
