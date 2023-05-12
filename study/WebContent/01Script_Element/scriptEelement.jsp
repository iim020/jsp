<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 선언부(변수, 메소드) -->
	<%!int a = 5;
	int b = 10;

	public int add(int x, int y) {
		return x + y;
	}%>

	<!-- 1차 스크립트릿(값 출력) -->
	1차 add요청 :
	<%=add(a, b)%>

	<!-- 표현식(단순 자바 활용) -->
	<%
		a = a + 10;
		b = b + 10;
	%>

	<!-- 2차 스크립트릿(값 출력) -->
	2차 add요청 :
	<%=add(a, b)%>

</body>
</html>