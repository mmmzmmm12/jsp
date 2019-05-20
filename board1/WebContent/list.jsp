<%@page import="kr.co.board1.service.BoardService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.board1_bean.BoardBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@page import="kr.co.board1_bean.UserBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserBean ub = (UserBean)session.getAttribute("user");

	String nick = null;
	
	List<BoardBean> list = new ArrayList<>();
	int totalPage = 0;
	int listCount = 0;
	
	if(ub == null){
		// 로그인을 하지 않았을 때
		response.sendRedirect("/board1/user/login.jsp?result=101");
	}else{
		request.setCharacterEncoding("UTF-8");
		
		String pg = request.getParameter("pg");
		
		BoardService bs = BoardService.getIntance();
		
		int total = bs.getTotalBoard();
		
		totalPage =bs.getTotalpage(total);
		
		int start = bs.getStartForLimit(pg);
		
		// 로그인을 했을 경우 
		nick = ub.getNick();
		list = bs.getBoardList(start);
		
		// 목록 출력용 번호
		listCount = bs.getListStartCount(total, start);
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
					
					<%
					for(BoardBean bb : list){
					%>
					<tr>
						<td><%= listCount-- %></td>
						<td><a href="#"><%= bb.getTitle() %></a>&nbsp;[<%= bb.getComment() %>]</td>
						<td><%= bb.getNick() %></td>
						<td><%= bb.getRdate().substring(2,10) %></td>
						<td><%= bb.getHit() %></td>
					</tr>
					<%
					}
					%>
					
				</table>
			</div>
			<!-- 페이징 -->
			<nav class="paging">
				<span> 
				<a href="#" class="prev">이전</a>
				<% for(int i= 1; i <= totalPage; i++){ %>
				<a href="./list.jsp?pg=<%= i %>" class="num"><%= i %></a>
				<% } %>
				<a href="#" class="next">다음</a>
				</span>
			</nav>
			<a href="/board1/write.jsp" class="btnWrite">글쓰기</a>
		</div>
	</body>

</html>










