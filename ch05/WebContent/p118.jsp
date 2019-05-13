<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>버퍼 정보</title>
</head>
	<body>
		버퍼 크기 : <%= out.getBufferSize() %>
		남은 크기 : <%= out.getRemaining() %>
		auto flush : <%= out.isAutoFlush() %>
	</body>
</html>