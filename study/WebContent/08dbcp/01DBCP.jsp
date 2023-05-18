<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	02DBCP.jsp
	<hr>
	<!-- jdbc 드라이버 로딩 -->

	<%
		//		try {
		//
		//			Class.forName("oracle.jdbc.driver.OracleDriver");
		//			System.out.println("success to load oracle driver");
		//
		//		} catch (ClassNotFoundException e) {
		//			e.printStackTrace();
		//
		//			System.out.println("fail to load oracle driver");
		//
		//		}
		/* 디비 연결 */
		Connection conn = null; // 인터페이스

		try {

			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
			System.out.println("success to connect oracle");

		} catch (SQLException e) {
			e.printStackTrace();

			System.out.println("fail to connect oracle");

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}
	%>




</body>
</html>