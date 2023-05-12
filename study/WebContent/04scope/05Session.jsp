<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
05Session.jsp
<hr>
<%
String str1 = (String)request.getAttribute("str1");
Integer num1 = (Integer)request.getAttribute("num1");
out.print(str1+"<hr>");
out.print(num1+"<hr>");

String str2 = (String)session.getAttribute("str2");
Integer num2 = (Integer)session.getAttribute("num2");
out.print(str2 + "<hr>");
out.print(num2 + "<hr>");

%>
</body>
</html>