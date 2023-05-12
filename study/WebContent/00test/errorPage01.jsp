<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error 페이지</title>
</head>
<body>
	<h4>에러~</h4>
	전산실에 문의주세요 010.0000...
	<% 
		System.out.println("예외클래스:" + exception);
		System.out.println("예외 내용 : " + exception.getMessage());
	%>
</body>
</html>