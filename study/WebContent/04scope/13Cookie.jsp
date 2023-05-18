<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
13Cookie.jsp
<hr>

<%
/* 모든 쿠키를 제거
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length > 0){
	for(int i = 0; i < cookies.length; i++ ){
		cookies[i].setMaxAge(0); // 쿠기의 유효시간을 0으로설정하여 만료시킴
		response.addCookie(cookies[i]); 
		}
}
*/

// memId 쿠키 제거
Cookie cookie = new Cookie("memId", "");
cookie.setMaxAge(0);
response.addCookie(cookie);
out.print("로그아웃 되었습니다.");
%>

</body>
</html>