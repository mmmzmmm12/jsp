<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>5-5</title>
	
</head>
	<body>
		<h3>5.내장객체 영역 name값 확인</h3>
		<%
			String pName = (String)pageContext.getAttribute("name"); // getAttribute가 object를 받는다
			String rName = (String)request.getAttribute("name"); // getAttribute가 object를 받는다
			String sName = (String)session.getAttribute("name"); // getAttribute가 object를 받는다
			String aName = (String)application.getAttribute("name"); // getAttribute가 object를 받는다
		
		%>
		
		<p>
			pageContest 값 : <%= pName %> <br />
			request 값 : <%= rName %> <br />
			session 값 : <%= sName %> <br />
			application 값 : <%= aName %> <br />
			
		</p>
	</body>
</html>