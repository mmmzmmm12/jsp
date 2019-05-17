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
	
	if(ub == null){
		// 로그인을 하지 않았을 때
		response.sendRedirect("/board1/user/login.jsp?result=101");
	}else{
		// 로그인을 했을 경우 
		nick = ub.getNick();
	}
	
	// 게시판 목록과 데이터베이스 연동	
	// 1단계, 2단계
	Connection conn = DBConfig.getConnection();
	
	// 3단계
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LIST);
	
	// 4단계
	ResultSet rs = psmt.executeQuery();
	
	// 5단계
	
	while(rs.next()){
		
		BoardBean bb = new BoardBean();
		
		// 1나의 레코드만 담긴거임
		bb.setSeq(rs.getInt(1));
		bb.setParent(rs.getInt(2));
		bb.setComment(rs.getInt(3));
		bb.setCate(rs.getString(4));
		bb.setTitle(rs.getString(5));
		bb.setContent(rs.getString(6));
		bb.setFile(rs.getInt(7));
		bb.setHit(rs.getInt(8));
		bb.setUid(rs.getString(9));
		bb.setRegip(rs.getString(10));
		bb.setRdate(rs.getString(11));
		bb.setNick(rs.getString(12));
		

		list.add(bb);
	}
	
	
	// 6단계
	rs.close();
	psmt.close();
	conn.close();
	
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
					
					<%
					for(BoardBean bb : list){
					%>
					<tr>
						<td><%= bb.getSeq() %></td>
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
				<a href="#" class="num">1</a>
				<a href="#" class="next">다음</a>
				</span>
			</nav>
			<a href="/board1/write.jsp" class="btnWrite">글쓰기</a>
		</div>
	</body>

</html>










