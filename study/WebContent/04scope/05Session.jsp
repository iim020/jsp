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
05Session.jsp

<%
String str1 = (String)request.getAttribute("str1");
Integer num1 = (Integer)request.getAttribute("num1");
out.print(str1+"<br>");
out.print(num1+"<hr>");

String str2  = (String)session.getAttribute("str2");
Integer num2 = (Integer)session.getAttribute("num2");
out.print(str2+"<br>");
out.print(num2+"<hr>");
%>



<%
String memId= request.getParameter("memId");
String memPass = request.getParameter("memPass");
System.out.println("memId: "+ memId);
System.out.println("memPass: "+ memPass);

if(memId != null && memPass != null 
	&& ! memId.equals("") && ! memPass.equals("")){
	request.setAttribute("request_memId", memId);
	session.setAttribute("session_memId", memId);
}
%>

<c:choose>
	<c:when test="${ ! empty session_memId }">
		로그인되었습니다<br>
		상세정보 : <a href="./06Session.jsp"><c:out value="${session_memId}"></c:out></a>
	</c:when>
	<c:otherwise>
		로그인 해주세요
	</c:otherwise>
</c:choose>


<%
/*세션 유효시간 (초단위)  */
//session.setMaxInactiveInterval(10);

//세션 즉시 제거
//session.invalidate();
%>


</body>
</html>