<%@page import="kr.or.nextit.exception.BizDuplicateKeyException"%>
<%@page import="kr.or.nextit.exception.BizNotEffectedException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.nextit.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NextIT</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/images/nextit_log.jpg" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/header.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/memberView.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/footer.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>


	<jsp:useBean id="member" class="kr.or.nextit.member.vo.MemberVO"></jsp:useBean>
	<jsp:setProperty property="*" name="member" />
	<%
		String memId = request.getParameter("memId");
		System.out.println("memId:" + memId);

		MemberVO mem = (MemberVO) session.getAttribute("memberVO");

		if (memId != null && mem != null && memId.equals(mem.getMemId())) {
			System.out.println("(memberEdit) memId of request and memId of session are the same");

			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");
				StringBuffer sb1 = new StringBuffer();

				sb1.append(" UPDATE                  ");
				sb1.append(" member     				");
				sb1.append(" SET MEM_DEL_YN = 'Y'    				");
				sb1.append(" WHERE mem_id = ? ");

				pstmt = conn.prepareStatement(sb1.toString());

				int cnt = 1;
				pstmt.setString(cnt++, member.getMemId());
				rs = pstmt.executeQuery();

				rs.next();
				session.removeAttribute("memberVO");
				System.out.println("업데이트 성공");
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", e);
			} finally {
				if (rs != null) {
					try {
						rs.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				if (pstmt != null) {
					try {
						pstmt.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				if (conn != null) {
					try {
						conn.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}

		} else {
			System.out.println("(memberEdit) memId of request and memId of session are not the same");
			BizNotEffectedException bne = new BizNotEffectedException();
			request.setAttribute("bne", bne);
		}
	%>
	<div class="container">
		<c:if test="${bne eq null and error eq null}">
			<h3>회원탈퇴 성공</h3>
			<div>
				<p>회원 탈퇴가 처리 되었습니다. 확인을 누르시면 로그인 페이지로 이동합니다.</p>
				<div class="btn-area">
					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/login/login.jsp'">확인</button>
				</div>
			</div>
		</c:if>
		<c:if test="${$bne ne null or error ne null}">
			<h3>회원탈퇴 실패</h3>
			<div>
				<p>회원 탈퇴에 실패하였습니다. 전산실에 문의 부탁드립니다. 042-719-8850</p>
				<div class="btn-area">
					<button type="button" onclick="history.back();">뒤로가기</button>
					<button type="button" onclick="">홈</button>
				</div>
			</div>
		</c:if>
	</div>



</body>
</html>