<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
16EL.jsp
<hr>
<p> by request : ${memId}</p>
<p> by session : ${memId}</p>
<p> by application : ${memId}</p>

<hr>

<p> by EL scope request : ${requestScope.memId}</p>
<p> by EL scope session : ${sessionScope.memId}</p>
<p> by EL scope application : ${applicationScope.memId}</p>


</body>
</html>