<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String seq = request.getParameter("seq");
	String pg = request.getParameter("pg");

	// 1단계, 2단계
	Connection conn = DBConfig.getConnection();

	// 3단계
	PreparedStatement psmt = conn.prepareStatement(SQL.DELETE_BOARD);
	psmt.setString(1, seq);


	// 4단계
	psmt.executeUpdate();
	
	// 6단계
	psmt.close();
	conn.close();

	response.sendRedirect("../list.jsp?pg="+pg);
	
%>