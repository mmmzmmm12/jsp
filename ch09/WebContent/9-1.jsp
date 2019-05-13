<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>9-1</title>
</head>
	<body>
		<h3>1.쿠키</h3>
		
		<%
			// 쿠키생성
			Cookie cookie1 = new Cookie("name","홍길동");
			Cookie cookie2 = new Cookie("uid","hongkildong");
			cookie1.setMaxAge(60*3); // 3분뒤에 스스로 사라짐 
			cookie2.setMaxAge(60*3); // 3분뒤에 스스로 사라짐 
			
			response.addCookie(cookie1);
			response.addCookie(cookie2);
		
		%>
		
		<h4>쿠키생성 후 클라이언트로 전송 완료!</h4>
		<a href="./9-2.jsp">쿠키확인냠냠냠</a>
	</body>
</html>