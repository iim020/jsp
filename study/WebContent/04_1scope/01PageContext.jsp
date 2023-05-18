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
	//	request.setCharacterEncoding("utf-8");
	%>
	<%
	// request.setAttribute("memId", "nextId");
// 	request.setAttribute("memPass", "nextPass");
	
	%>
	<%
//	String memId = (String) request.getAttribute("memId");
//	String memPass = (String) request.getAttribute("memPass");
	%>

	<form action="./02request.jsp" method="get">
	<input type="text" name="memId" value="">
	<input type="text" name="memPass" value="">
	<input type="submit" value="전송">
	</form>
	

</body>
</html>