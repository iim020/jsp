<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	01JDBC.jsp
	<hr>
	<!-- jdbc 드라이버 로딩 -->

	<%
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("success to load oracle driver");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();

			System.out.println("fail to load oracle driver");

		}
	%>




</body>
</html>