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
		/*인코딩 부분*/
		request.setCharacterEncoding("utf-8");
	%>
	11Cookie.jsp
	<hr>

	<%
		String memId = request.getParameter("memId");
		System.out.println("memId: " + memId); //한글입력시 깨짐으로 인코딩 필요
		out.println("memId: " + memId); //한글입력시 깨짐으로 인코딩 필요

		// 쿠키 생성
		//	Cookie cookie = new Cookie("memId", memId);
		//	cookie.setComment("회원명");
		//	cookie.setMaxAge(60 * 60 * 24); // 유효시간 1일 / 초단위로
		//	cookie.setHttpOnly(true); // 보안관련 설정( XSS 공격을 차단 )
		//		cookie.setSecure(true); // 보안관련 (SSL 통신에서만 쿠키 사용) https에서만 사용
		//	response.addCookie(cookie);

		if (memId != null && ! memId.equals("")) {
			out.print("<h4> 로그인되었습니다<br>");
			out.print("<a href='./12Cookie.jsp'>회원전용</a>");
			Cookie cookie = new Cookie("memId", memId);
			cookie.setComment("회원명");
			cookie.setMaxAge(60 * 60 * 24); // 유효시간 1일 / 초단위로
			cookie.setHttpOnly(true); // 보안관련 설정( XSS 공격을 차단 )
			//		cookie.setSecure(true); // 보안관련 (SSL 통신에서만 쿠키 사용) https에서만 사용
			response.addCookie(cookie);

		}else {
			out.print("<h4>로그인 하셔야 합니다</h4>");
		}
	%>

</body>
</html>