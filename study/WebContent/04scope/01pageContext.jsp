<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	현재 프로젝트 루트 경로 : ${pageContext.request.contextPath }
	<%
		/*forward 실행하면 02requst.jsp로 이동*/
		pageContext.forward("02request.jsp");
	%>

</body>
</html>