<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./inc/config.jsp"%> 
<!-- 위와같은 지시자'@'가 없으면 <p>부분을 호출할수 없다. -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>7-1</title>
</head>
	<body>
		<h3>1.include 지시자</h3>
		
		<p>
			데이터베이스 주소		: <%= HOST %><br>
			데이터베이스 아이디	: <%= USER %><br>
			데이터베이스 비밀번호 	: <%= PASS %><br>
			
		</p>
	</body>
</html>