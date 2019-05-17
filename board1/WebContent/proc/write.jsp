<%@page import="kr.co.board1_bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	String subject  = request.getParameter("subject");
	String content  = request.getParameter("content");
	String regip 	= request.getRemoteAddr();

	// 세션에서 사용자 아이디 가져오기
	UserBean ub =(UserBean)session.getAttribute("user");
	String uid = ub.getUid();
	
	// 1단계 - JDBC 드라이버 로드 , 2단계 데이터베이스 접속
	Connection conn = DBConfig.getConnection();
	
	// 3단계 - SQL
	PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_BOARD);
	psmt.setString(1, subject);
	psmt.setString(2, content);
	psmt.setString(3, uid);
	psmt.setString(4, regip);
	
	// 4단계 - SQL
	psmt.executeUpdate();
	
	
	
	// 5단계 - 결과셋처리
	
	
	// 6단계 - 종료
	psmt.close();
	conn.close();
	
	
	// 작성한걸 목록으로 이동
	response.sendRedirect("/board1/list.jsp");

%>