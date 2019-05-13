<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>3-3</title>
</head>
	<body>
		<h3>3.회원가입 parameter 수신</h3>
		
		<%
			// post 방식으로 데이터를 전송했을 때 데이터를 디코딩 해야 한글이 깨지지 않는다 . 
			// cf) GET vs POST 차이 교재p80
			request.setCharacterEncoding("UTF-8");		// 3-1부분에서 encoding이 되어 오기때문에 이부분에서 decoding을 해줘야함 	
		
			String name 		= request.getParameter("name");
			String gender 		= request.getParameter("gender");
			String[] hobbies 	= request.getParameterValues("hobby"); // 배열일 경우 이름을 복수로 
			String addr			= request.getParameter("addr"); //get방식은 주소에 붙어서 나간다. 일반적 표준 
																// 단점으로는 parameter가 노출이된다.
																// 그래서 나오는 것이 post방식이다.
																// <3-1>에 form method 부분 
			
		%>
		<p>
			이름 : <%=name %>
			성별 : <%=gender %>
			취미 : 
			<%
				for(String hobby : hobbies){
					out.print(hobby+", ");
				}
			%>
			지역 : <%=addr %>
		</p>
		
	</body>
</html>