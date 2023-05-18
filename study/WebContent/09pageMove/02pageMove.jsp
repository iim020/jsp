<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	02pageMove.jsp
	<hr>

	<%
	// forward는 02page에서 03page를 찾아줌
		//	pageContext.forward("./03pageMove.jsp");
	%>
	<%-- 
	
	<jsp:forward page="./03pageMove.jsp"></jsp:forward>
	--%>

	<%
	// 사용자에게 주소를 알려주고 사용자가 이동할수 있게 함
	response.sendRedirect("./01pageMove.jsp");
	%>
</body>
</html>