<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.vo.MemberVo"%>
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
	<%
		//디렉티브 선언부
		MemberVo member = new MemberVo();
		request.setAttribute("member", member);
	%>

	<%
		//표현식
		if (member.getMemId() != null) {
	%>
	<p><%=//스크립트릿(결과출력)
						member.getMemId()%></p>
	<%
		} else {
	%>
	<p>로그인 하셔야 합니다.</p>

	<%
		}
	%>

	<hr>
	<c:choose>
		<c:when test="${!empty member.memId}">
			<p>${member.memId }</p>
		</c:when>
		<c:otherwise>
			<p>로그인 하셔야합니다.</p>
		</c:otherwise>
	</c:choose>

	<hr>
	<c:set var="price" value="${5000*3 }" />
	<c:set var="price2" value="${5000*3 }" />

	<p>before: ${price}</p>
	out :
	<c:out value="${price }"></c:out>

	<c:if test="${15000 == price}">
		<!-- EL의 앞뒤로 공백이 발생하면 코드가 실행되지 않는다. -->
		<!-- ex). "  ${price}   "이런식으로 쌍따옴표 사이에 공백이 있으면 코드가 실행되지않음 -->
		<p>가격은 15000원</p>
	</c:if>

	<hr>
	<c:set var="cost" value="${3000 }"></c:set>
	<c:choose>
		<c:when test="${cost>10000 }">
			<p>제품 가격 : 10000 이상</p>
		</c:when>
		<c:when test="${cost>5000 && cost<10000 }">
			<p>제품 가격
		</c:when>
		<c:otherwise>
			<p>제품 가격 : 5000 이하</p>
		</c:otherwise>
	</c:choose>

	<%
		MemberVo[] member_list = new MemberVo[10];
		for (int i = 0; i < member_list.length; i++) {
			member_list[i] = new MemberVo(); // Initialize the object
			member_list[i].setMemId("nextit" + i);
			member_list[i].setMemNm("넥스트아이티" + i);
		}

		List<MemberVo> memList = new ArrayList<MemberVo>();
		for (int i = 0; i < member_list.length; i++) {
			memList.add(member_list[i]);
		}
		request.setAttribute("memList", memList);
	%>
	<c:forEach items="${memList}" var="member" varStatus="status" begin="3"
		end="8" step="2">
		<!-- 2씩 증가하면 인덱스 3번부터 8번까지 memList의 값을 member 변수에 저장해서 출력, status는 현재 리스트의 인덱스 값을 가짐 -->
		<p>인덱스 : ${status.index} , 순번 : ${status.count }</p>
		<p>ID : ${member.memId }</p>
		<p>이름 : ${member.memNm }</p>

		<p>시작값 : ${status.begin }</p>
		<p>종료값 : ${status.end }</p>
		<p>현재 루프가 처음인지 ? : ${status.first }</p>
		<p>현재 루프가 마지막인지 ? : ${status.last }</p>
		<p>현재 아이템 : ${status.current }</p>
		<hr>
	</c:forEach>
</body>
</html>