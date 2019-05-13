<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="kr.co.ch09.MemberInfo" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>인사말</title>
</head>
	<body>
		<%= member.getName() %> (<%=member.getId() %>)회원님
	</body>
</html>