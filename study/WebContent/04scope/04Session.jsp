<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
04Sesstion.jsp
<%
request.setAttribute("str1", "nextit01");
request.setAttribute("num1", 8890);

session.setAttribute("str2", "nextit02");
session.setAttribute("num2", 8891);

%>
<%
pageContext.forward("./05Session.jsp");

%>
<hr>
<a href="./05Session.jsp">05Session클릭</a>

</body>
</html>