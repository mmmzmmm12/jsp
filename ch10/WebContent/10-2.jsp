<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>10-2</title>
</head>
	<body>
		<h3>2.세션확인</h3>
		
		<%
			//getAttribute의 반환타입은 object(최상위클래스) 이기에 앞에()통하여 지정해줘야한다.
			//session에 대한 id 는  getId를 통해 쉽게 구할 수 있다.
			String sid 	= (String)session.getId();
			String name = (String)session.getAttribute("name");
			String uid	= (String)session.getAttribute("uid");
		
		
		%>
		
		<p>
			sid		: <%= sid %><br>	
			name 	: <%= name %><br>
			uid		: <%= uid %>
		</p>
		
		
	</body>
</html>