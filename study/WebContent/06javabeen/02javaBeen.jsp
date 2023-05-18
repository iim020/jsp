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
	02javaBeen.jsp
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%
		//		String memId = request.getParameter("memId");
		//		String memPass = request.getParameter("memPass");

		//		System.out.println("memId: " + memId);
		//		System.out.println("memPass: " + memPass);

		//		MemberVo member = new MemberVo();
		//		member.setMemId(memId);
		//		member.setMemId(memId);
		//		member.setMemPass(memPass);
		//		if (member.getMemId() != null && !member.getMemId().equals("")) {
		//			System.out.println(member.getMemId() + "디비지정");
		//			request.setAttribute("join", true);

		//		} else {
		//			request.setAttribute("join", false);/

		//		}
	%>
	<%--  
	<jsp:useBean id="member" class="com.vo.MemberVo"></jsp:useBean>
	<jsp:setProperty property="memId" name="member" value="nextIt8850" />
	<jsp:setProperty property="memPass" name="member" value="8850" />
--%>
	<jsp:useBean id="member" class="com.vo.MemberVo"></jsp:useBean>
	<jsp:setProperty property="*" name="member"></jsp:setProperty>

	<%
		System.out.println("memId: " + member.getMemId());
		System.out.println("memPass: " + member.getMemPass());

		if (member.getMemId() != null && !member.getMemId().equals("")) {
			System.out.println(member.getMemId() + " 디비지정");
			request.setAttribute("join", true);

		} else {
			request.setAttribute("join", false);

		}
	%>

	<c:choose>
		<c:when test="${join}">
			<p>회원가입이 정상적으로 처리되었습니다.</p>
			아이디:<jsp:getProperty property="memId" name="member"/>
			패스워드:<jsp:getProperty property="memPass" name="member"/>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("회원가입이 실패했습니다 다시해주세요")
				location.href = "./01javaBeen.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>