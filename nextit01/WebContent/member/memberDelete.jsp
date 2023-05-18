<%@page import="kr.or.nextit.exception.BizDuplicateKeyException"%>
<%@page import="kr.or.nextit.exception.BizNotEffectedException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.nextit.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				sb1.append(" SELECT COUNT(mem_id) FROM member WHERE mem_id =?");

				pstmt = conn.prepareStatement(sb1.toString());
				pstmt.setString(1, member.getMemId());
				rs = pstmt.executeQuery();

				rs.next();
				int rowCount = rs.getInt(1);
				System.out.println("rowCount: " + rowCount);

				if (rowCount != 0) {
					//사용하는 아이디가 있어서 에러 발생
					//throw new Exception();
					throw new BizDuplicateKeyException();
				} else {
					StringBuffer sb2 = new StringBuffer();
					sb2.append(" UPDATE                  ");
					sb2.append(" member     				");
					sb2.append(" SET MEM_DEL_YN = 'Y'    				");
					sb2.append(" WHERE mem_id = ? ");

					pstmt = conn.prepareStatement(sb2.toString());

					int cnt = 1;
					pstmt.setString(cnt++, member.getMemId());

					int resultCnt1 = pstmt.executeUpdate();
					System.out.println("resultCnt1 :" + resultCnt1);
					if (resultCnt1 == 0) {
						//사용자 정보를 디비에 등록하려고했는데 안된 경우
						//throw new Exception();
						throw new BizNotEffectedException();
					}

					StringBuffer sb3 = new StringBuffer();
					sb3.append("INSERT INTO member_role(user_id, user_role, user_role_nm)"
							+ "values(?,'ME', 'MEMBER')");
					pstmt = conn.prepareStatement(sb3.toString());
					pstmt.setString(1, member.getMemId());
					int resultCnt2 = pstmt.executeUpdate();
					if (resultCnt2 == 0) {
						//사용자 권한 정보를 디비에 등록하려고 했는데 안된경우
						//throw new Exception();
						throw new BizNotEffectedException();
					}
				}

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

		<h3>회원탈퇴 성공</h3>
		<div>
			<p>회원 탈퇴가 처리 되었습니다. 확인을 누르시면 로그인 페이지로 이동합니다.</p>
			<div class="btn-area">
				<button type="button" onclick="">확인</button>
			</div>
		</div>

		<h3>회원탈퇴 실패</h3>
		<div>
			<p>회원 탈퇴에 실패하였습니다. 전산실에 문의 부탁드립니다. 042-719-8850</p>
			<div class="btn-area">
				<button type="button" onclick="">뒤로가기</button>
				<button type="button" onclick="">홈</button>
			</div>
		</div>
	</div>



</body>
</html>