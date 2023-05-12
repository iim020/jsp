<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
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
03request.jsp

<%
String str = (String)request.getAttribute("str");
System.out.println("str :" + str);

String num = (String)request.getAttribute("num");
System.out.println("num :" + num);
%>

<%
String memId = request.getParameter("memId");
String memPass = request.getParameter("memPass");

System.out.println("memPass:" + memPass);

if(memId != null && memPass !=null && ! memId.equals("") && ! memPass.equals("")) {
	System.out.println("로그인 처리되었습니다.");
	request.setAttribute("login", true);
}else{
	System.out.println("로그인 해주세요.");
	request.setAttribute("login", false);
}

%>

<c:choose>
<c:when test="${login eq true }">
<p> 로그인 되었습니다.</p>
</c:when>
<c:otherwise>
<p> 로그인 하셔야합니다</p>
</c:otherwise>
</c:choose>

<%
Map<String, String[] > paramMap = request.getParameterMap();


Set<String> keySet = paramMap.keySet();

for(String key : keySet) {
	String[] values = paramMap.get(key);
	out.print(key+":");
	for(String val : values){
		out.print(val + ",");
	}
}
out.print("(set)<hr>");

/*iterator */
Iterator<String> keyIterator = keySet.iterator();

while(keyIterator.hasNext()){
	String key = keyIterator.next();
	String[] values = paramMap.get(key);
	out.println(key+":");
	if(values.length > 0){
		for(int i = 0; i<values.length; i++) {
			out.print(values[i] + ", ");
		}
	}
			}
out.print("(iterator)<hr>");

Set<Entry<String, String[]>> entrySet= paramMap.entrySet();
for( Entry<String, String[]> entry : entrySet){
	String key = entry.getKey();
	String[] values = entry.getValue();
	out.print(key + ", ");
	for(String val : values){
		out.print(val + ", ");
	}
}
out.print("(Set entry)<hr>");

Iterator<Entry<String, String[]>>iterator = entrySet.iterator();

while(iterator.hasNext()){
	Entry<String, String[]> entry = iterator.next();
	String key = entry.getKey();
	out.print(key + ":");
	String[] values = entry.getValue();
	for(String val : values) {
		out.print(val + " ,");
	}
}
out.print("(iterator Entry)<hr>");


%>

<%
// request.getParameterNames(): 모든 파라미터에 name 구함

Enumeration<String> eunmeration = request.getParameterNames();
while(eunmeration.hasMoreElements()){
	String paramName = eunmeration.nextElement();
	out.print(paramName + ": ");
	
	String[] paramValues = request.getParameterValues(paramName);
	for(int i=0; i < paramValues.length; i++) {
		String paramVal = paramValues[i];
		out.print(paramVal + " :");
	}
}
out.print("<hr>");
%>

<!--  request 객체의 메서드 살펴보기 -->

<%
String contextpath = request.getContextPath();
out.print("contextPath : " + contextpath + "<br>");

String method = request.getMethod();
out.print("method : " + method + "<br>");

HttpSession getSession = request.getSession();
if(getSession == pageContext.getSession()){
	out.print("동일한 Session입니다.<br>");
	
}

String protocal = request.getProtocol();
out.print("protocal : " + protocal + "<br>");


StringBuffer url = request.getRequestURL();
out.print("url : " + url.toString() +"<br>");

String uri = request.getRequestURI();
out.print("uri : " + uri.toString() +"<br>");

String queryString = request.getQueryString();
out.print("queryString : " + queryString +"<br>");




%>

</body>
</html>