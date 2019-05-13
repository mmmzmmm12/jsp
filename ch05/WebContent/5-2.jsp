<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>5-2</title>
</head>
	<body>
		<h3>2. pageContext 내장객체</h3>
		<%
			
			ServletRequest 	req 	= pageContext.getRequest();
			ServletResponse resp 	= pageContext.getResponse();	
		
			String name = req.getParameter("name");
	 		String age 	= req.getParameter("age");
		
	 		
			// String name = request.getParameter("name"); 이것도 가능 
		 	// String age 	= request.getParameter("age");
			
			
			// forward는 프로젝트내에서 다른페이지를 찾아 가는거기때문에 
			// naver는 안됨
			// pageContext.forward("http://naver.com");
		%>
		<p>
			이름 : <%= name %><br />
			나이 : <%= age %><br />
			
		</p>
		
	</body>
</html>