<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/config.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>7-2</title>
</head>
	<body>
		<h3>2.include(jsp에서제공) 액션태그</h3>
		
		<%--
			include 지시자
			- 공통의 전역파일을 삽입하는 include
			- 정적타임에 삽입된다.
		 --%>
		<%@ include file="./inc/header.jsp" %>
		
		<section>
			<h1>본문 내용 영역</h1>
		</section>

		<%--
			include 액션태그
			- UI뷰를 모듈화해서 삽입하는 include
			- 컴파일(실행)타임에 삽입된다.
		 --%>		
		<jsp:include page="./inc/footer.jsp" />
	</body>
</html>