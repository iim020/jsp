<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:bundle basename="resource.message">
		<fmt:message key="TITLE" />
	</fmt:bundle>
	<!-- 굳이 닫는 태그 필요없어서 /만 침 -->
	<%-- <fmt:bundle basename="resource.message"> 
	<fmt:message  key="TITLE"/>
	</fmt:bundle> --%>

	<%-- <fmt:setBundle var="message" basename="resource.message"/>
	<fmt:message bundle="${message}" key="TITLE"/> --%>
	<!-- bundle에는 setBundle에서 지정한 var(변수) 이름을 EL로 가져오면 된다. -->

	<fmt:setBundle var="message" basename="resource.message" />
	<fmt:message bundle="${message}" key="TITLE" var="title" />
	<p>기관명 : ${title }</p>
	<hr>

	<fmt:setBundle basename="resource.message" var="message02" />
	<fmt:message bundle="${message02 }" key="TITLE" var="centerNm" />
	<p>기관명 : ${centerNm }</p>

	<hr>
	<fmt:setLocale value="en" />
	<fmt:setBundle basename="resource.message" var="message_en" />
	<fmt:message bundle="${message_en }" key="TITLE" />
	--영어로 출력

	<hr>
	<fmt:setLocale value="ko" />
	<fmt:setBundle basename="resource.message" var="message_en" />
	<fmt:message bundle="${message_en }" key="TITLE" />
	--한글로 출력
	
	<hr>
	<fmt:set var="memId" value="ko" />
	<fmt:setBundle basename="resource.message" var="message_en" />
	<fmt:message bundle="${message_en }" key="VISITOR" />
	
	<p>-----------------------이 아래는 그냥 한번씩 읽어볼 것----------------------------------</p>
	<!-- <pattern 규칙>
# : 채워야 할 자리에 비해서 데이터가 모자라면 공백으로 표시 자리수 보다 수치 데이터가 길 경우 
      자리수 만큼만 출력
0 : 빈 자리 만큼 0으로 채운다. -->
	<fmt:formatNumber value="1234567.89" />
	<br>
	<br>
	<!-- 1,234,567.89  -->
	<fmt:formatNumber value="0.5" type="percent" />
	<br>
	<br>
	<!-- 50%  -->
	<fmt:formatNumber value="10000" type="currency" currencySymbol="￦" />
	<br>
	<br>
	<!-- ₩10,000 -->
	<fmt:formatNumber value="10000" type="currency" currencySymbol="$" />
	<br>
	<br>
	<!-- $10,000 -->
	<fmt:formatNumber value="1234567.8912345" pattern="#,#00.0#" />
	<br>
	<br>
	<!-- 1,234,567.89  -->
	<fmt:formatNumber value="1234567.8" pattern="#,#00.0#" />
	<br>
	<br>
	<!-- 1,234,567.8 -->
	<fmt:formatNumber value="1234567.89" pattern=".000" />
	<br>
	<br>
	<!-- 1234567.890 -->
	<hr>

	<c:set var="now" value="<%=new java.util.Date()%>"></c:set>
	현재날짜와 시간 : ${now }
	<br>
	<br> no_option :
	<fmt:formatDate value="${now }" />
	<br>
	<br> default :
	<fmt:formatDate value="${now }" type="both" dateStyle="default"
		timeStyle="default" />
	<br>
	<br> short :
	<fmt:formatDate value="${now }" type="both" dateStyle="short"
		timeStyle="short" />
	<br>
	<br> medium :
	<fmt:formatDate value="${now }" type="both" dateStyle="medium"
		timeStyle="medium" />
	<br>
	<br> long :
	<fmt:formatDate value="${now }" type="both" dateStyle="long"
		timeStyle="long" />
	<br>
	<br> full :
	<fmt:formatDate value="${now }" type="both" dateStyle="full"
		timeStyle="full" />
	<br>
	<br> 패턴 적용 날짜1 :
	<fmt:formatDate value="${now }" pattern="yyyy년MM월dd일 hh시mm분ss초" />
	<br>
	<br> 패턴 적용 날짜2 :
	<fmt:formatDate value="${now }" pattern="yyyy-MM-dd hh:mm:ss" />
	<br>
	<br>
	<hr>
	
	
</body>
</html>