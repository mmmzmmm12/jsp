<%@page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
	// 세션 정보 삭제
	session.invalidate();

	// 로그인페이지 이동
	response.sendRedirect("../login.jsp");

%>
