<%@page import="java.util.Enumeration"%>
<%@page import="org.apache.taglibs.standard.lang.jstl.EnumeratedMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
07Appliction.jsp
<hr>
<%
// <application.getInitParameter>
// web.xml 파일에서 정의된 초기화 파라미터의 값을 가져오는 데 사용됩니다. 
String id = application.getInitParameter("ID");
out.print("ID"+id+"<br>");
//결과값
//IDNextIT

%>
<%

Enumeration<String> paradmNames = application.getInitParameterNames();
while(paradmNames.hasMoreElements()){
	String paramName = paradmNames.nextElement();
	String paramvalue = application.getInitParameter(paramName);
	out.print(paramName + ":" + paramvalue+"<br>");
}
// 결과값
// subject:NextIT
// ID:NextIT
%>

</body>
</html>