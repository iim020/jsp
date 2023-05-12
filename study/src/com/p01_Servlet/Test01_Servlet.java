package com.p01_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01_Servlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
		System.out.println("Test01_Servlet 서블릿 init 메소드 실행됨");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Test01_Servlet 서블릿 service 메소드 실행됨");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print("<html>");
		out.print("<head>");
		out.print("<title> hello world </title>");
		out.print("</head>");
		out.print("<body>");
		out.print("<h4><span style='color:red'> 안녕하세요 </span></h4>");
		out.print("<hr>");
		out.print("<h4><span style='color:orange'>" + new java.util.Date() + "부터 jsp, spring 수업을 함께합니다.</span></h4>");
		out.print("<hr>");
		out.print("<h4><span style='color:blue'> 화이팅 </span></h4>");
		out.print("<hr>");
		String arr[] = new String[10];
		for (int i = 0; i < arr.length; i++) {
			arr[i] = i+"";
			out.print("<h4><span style='color:purple'>" + arr[i] + "</span></h4><hr>");
		}
		out.print("</body>");

		out.print("</html>");

	}

}