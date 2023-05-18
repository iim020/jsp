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
02request.jsp
<%
String memId = (String)request.getParameter("memId");
String memPass = (String)request.getParameter("memPass");


if(memId != null && memPass != null && ! memId.equals("") && ! memPass.equals("")) {
	System.out.println("로그인 처리되었습니다.");
	System.out.println(memId);
	System.out.println(memPass);
	
	request.setAttribute("login", true);
}else{
	System.out.println("로그인 해주세요.");
	request.setAttribute("login", false);
}
%>
<c:choose>
<c:when test="${login eq true }">
<p> 로그인 되었습니다.</p>
<p> </p>
<p> </p>
</c:when>
<c:otherwise>
<p> 로그인 하셔야합니다</p>
</c:otherwise>
</c:choose>

</body>
</html>