
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
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
	04JDBC.jsp
	<hr>
	<!-- jdbc 드라이버 로딩 -->

	<%
//		try {

//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println("success to load oracle driver");

//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();

//			System.out.println("fail to load oracle driver");

//		}
		/* 디비 연결 */
		Connection conn = null; // 인터페이스
		
		/*쿼리질의 */
//		Statement stat = null;
	
		PreparedStatement pstmt = null;

		try {

			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "jsp", "oracle");
			System.out.println("success to connect oracle");
			
	//		stat = conn.createStatement();
	//		stat.executeUpdate("Insert into member values('nextit','8850')");
				
				pstmt = conn.prepareStatement("Insert into member values(?,?)");
				pstmt.setString(1, "NextIt_internet");
				pstmt.setString(2, "8852");
				pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("fail to connect oracle");

		} finally {
			if (conn != null) {
				// if(stat !=null ){try{stat.close();}catch(Exception e){e.printStackTrace();}}
				 if(pstmt !=null ){try{pstmt.close();}catch(Exception e){e.printStackTrace();}}
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