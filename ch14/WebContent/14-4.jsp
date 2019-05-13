<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String uid = request.getParameter("uid");
	
	String host = "jdbc:mysql://192.168.0.161:3306/jtd";
	String user = "jtd";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement psmt = null;
	
	try{
		// 1단계 -JDBC드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계 - 데이터베이스 접속
		conn = DriverManager.getConnection(host,user,pass);
		
		// 3단계 - SQL실행객체 생성 및 데이터 맵핑
		psmt = conn.prepareStatement("DELETE FROM `MEMBER` WHERE `uid`=?;");
		psmt.setString(1, uid);
		
		// 4단계
		psmt.executeUpdate();
		
		// 5단계
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// 6단계 - 종료
		conn.close();
		psmt.close();
	}
	// 삭제후 다시 목록으로 이동
	response.sendRedirect("14-3.jsp");
	
%>