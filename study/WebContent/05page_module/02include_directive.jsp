<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	02include_directive.jsp
	<hr>
	

	<div>
		<div>
			<!-- 헤더 -->
			<%@ include file ="./header.jsp" %>
		</div>
	</div>
	<div>
		<div>
			<h3>The main content</h3>
		</div>
	</div>
	<div>
		<div>
			<!-- 헤더 -->
			<%@ include file ="./footer.jsp" %>
		</div>
	</div>
</body>
</html>