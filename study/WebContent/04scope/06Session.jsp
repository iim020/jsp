<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
06Session.jsp
<hr>

<%
//reqeust
String request_memId = (String)request.getAttribute("request_memId");
out.print("(request)회원명: "+ request_memId);
out.print("<hr>");

//session
String session_memId = (String)session.getAttribute("session_memId");
out.print("(session)회원명: "+ session_memId);
out.print("<hr>");
%>

<%
String sessionId =  session.getId();
out.print("sessionId : "+ sessionId);
%>

<c:if test="${ empty session_memId }">
	<script>
		alert("해당 페이지는 회원전용 페이지 입니다. 확인을 누르시면 로그인 페이지로 이동합니다.");
		location.href="${pageContext.request.contextPath}/04scope/04Session.jsp";
	</script>
</c:if>





</body>
</html>