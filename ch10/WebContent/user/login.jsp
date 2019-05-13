<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>


<%	// 여기는 자바코드@
	String result = request.getParameter("result");


%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<script>
		// 여기는 자바스크립트@
	
		// 자바코드를  자바스크립트에서 사용하기위해 아래와 같은 경우처럼 해줘야한다.
		var result = "<%= result %>";
		
		if(result == "fail") {
			alert("회원이 아닙니다.");	
					}
		
		
	</script>
</head>
	<body>
		<h3> 로그인 </h3>
		<!-- table부분에 정보를 서버로 보내야하니 form문으로감싸줘야한다. -->
		<form action="./loginProc.jsp">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" /></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="pass" name="pass" /></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" name="로그인" /></td>
				</tr>
			</table>
		</form>
	</body>
</html>