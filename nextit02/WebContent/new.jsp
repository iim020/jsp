<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String q1 = request.getParameter("q1");
		
		out.println(q1);
		String [] q5 = request.getParameterValues("q5");
		for(String q : q5) {
			out.println(q);
		}
		 
	%>
</body>
</html>