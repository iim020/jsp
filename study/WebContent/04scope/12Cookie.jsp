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
	12Cookie.jsp
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie c = cookies[i];
				String cName = c.getName();
				String cValue = c.getValue();

				out.print(cName + " : " + cValue + "<br>");

				if (cookies[i].getName().equals("memId")) {
					System.out.println("memId: " + cookies[i].getValue());
					request.setAttribute("userName", cookies[i].getValue());

				}

			}
		}
	%>
	<hr>
	<c:choose>
		<c:when test="${! empty userName}">
회원명: ${userName}
<a href="${pageContext.request.contextPath}/04scope/13Cookie.jsp">로그아웃</a>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("로그인하셔야합니다 확인을 누르세요");
				location.href = "./10Cookie.jsp";
			</script>
		</c:otherwise>
	</c:choose>


</body>
</html>