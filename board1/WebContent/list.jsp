<%@page import="kr.co.board1_bean.UserBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserBean ub = (UserBean)session.getAttribute("user");

	String nick = null;
	
	if(ub == null){
		response.sendRedirect("/board1/user/login.jsp?result=101");
	}else{
		nick = ub.getNick();
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>글목록</title> 
		<link rel="stylesheet" href="/board1/css/style.css" />
	</head>
	<body>
		<div id="board">
			<h3>글목록</h3>
			<!-- 리스트 -->
			<div class="list">
				<p class="logout"><%= nick %>! 반갑습니다. <a href="/board1/user/proc/logout.jsp">[로그아웃]</a><p>
				<table>
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>글쓴이</td>
						<td>날짜</td>
						<td>조회</td>
					</tr>
				
					<tr>
						<td>1</td>
						<td><a href="#">테스트 제목입니다.</a>&nbsp;[3]</td>
						<td>홍길동</td>
						<td>18-03-01</td>
						<td>12</td>
					</tr>
				</table>
			</div>
			<!-- 페이징 -->
			<nav class="paging">
				<span> 
				<a href="#" class="prev">이전</a>
				<a href="#" class="num">1</a>
				<a href="#" class="next">다음</a>
				</span>
			</nav>
			<a href="#" class="btnWrite">글쓰기</a>
		</div>
	</body>

</html>










