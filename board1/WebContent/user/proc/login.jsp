<%@page import="kr.co.board1_bean.UserBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
	// 파라미터 언어셋 지정
	request.setCharacterEncoding("UTF-8");
	
	// 파라미터 수신
	String Uid 	= request.getParameter("id");
	String Pass = request.getParameter("pw");

	String host = "jdbc:mysql://192.168.0.161:3306/jtd";
	String user = "jtd";
	String pass = "1234";
	
	// 1단계 - JDBC 드라이버
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host,user,pass);
	
	// 3단계 - SQL실행문
	String sql = "SELECT * FROM `JSP_USER` WHERE uid=? AND pass=PASSWORD(?);";
	PreparedStatement psmt = conn.prepareStatement(sql); 
	psmt.setString(1, Uid);
	psmt.setString(2, Pass);
	
	// 4단계 - SQL
	ResultSet rs = psmt.executeQuery();
	
	// 5단계 - 결과셋 처리
	if(rs.next()){
		// 회원이 맞을경우
		// bean을 이용해서 정보 받아오기
		UserBean ub = new UserBean();
		
		ub.setUid(rs.getString(1));
		ub.setPass(rs.getString(2));
		ub.setName(rs.getString(3));
		ub.setNick(rs.getString(4));
		ub.setEmail(rs.getString(5));
		ub.setHp(rs.getString(6));
		ub.setGrade(rs.getInt(7));
		ub.setZip(rs.getString(8));
		ub.setAddr1(rs.getString(9));
		ub.setAddr2(rs.getString(10));
		ub.setRegip(rs.getString(11));
		ub.setRdate(rs.getString(12));
		
		// 회원정보 객체 세션에 저장
		session.setAttribute("user", ub);
		
		// 게시판 목록 이동
		response.sendRedirect("/board1/list.jsp");
		
	}else{
		// 회원이 아닐경우
		response.sendRedirect("../login.jsp?result=fail");
	};
	
	// 6단계 - 종료
	rs.close();
	psmt.close();
	conn.close();
	
	
	// 게시판 목록 화면이동 or 로그인화면

	
%>
