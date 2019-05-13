<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>3-1</title>
</head>
	<body>
		<h3>1.request 내장객체</h3>
		
		<h4>로그인</h4>
		
		<form action="./3-2.jsp"> <!-- action부분에 주소를 입력// "./" 라는 의미는 현재 디렉토리  "../"는 상위 디렉토리  -->
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" name="로그인"></td>
				</tr>
			</table>
		
		</form>
		
		<h4>회원가입</h4>
		
		<form action="./3-3.jsp" method="post">
		
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
					<label><input type="radio" name="gender" value="남" />남</label>
					<label><input type="radio" name="gender" value="여" />여</label>
					</td> <!-- radio는 둘중하나 선택하는 것 // label로 묶어주면 글자를 클릭해도 체크가 된다.-->
				</tr>
				
				
				<tr>
					<td>취미</td>
					<td>
					<label><input type="checkbox" name="hobby" value="등산" />등산</label>
					<label><input type="checkbox" name="hobby" value="여행" />여행</label>
					<label><input type="checkbox" name="hobby" value="독서" />독서</label>
					<label><input type="checkbox" name="hobby" value="영화" />영화</label>
					<label><input type="checkbox" name="hobby" value="운동" />운동</label>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" name="회원가입"></td>
				</tr>
				<tr>
					<td>지역</td>
					<td>
						<select name="addr">
							<option>서울</option>
							<option>대전</option>
							<option>대구</option>
							<option>부산</option>
							<option>광주</option>
						</select>
					</td>
				</tr>
			</table>
		</form>
		
		<h4>request 내장객체 멤버</h4>
		
		<a href="./3-4.jsp">request 내장객체 멤버확인</a> <!-- a태그는 링크이다 -->
		
		
	</body>
</html>