<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");
	
	String nick = request.getParameter("nick");

	// 1단게, 2단계
	Connection conn = DBConfig.getConnection();
	
	int count = 0;
	
	// 3단계 - SQL
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_NICK_COUNT);
	psmt.setString(1, nick);
	
	// 4단계 - SQL
	ResultSet rs = psmt.executeQuery();
	
	// 5단계 - 결과셋 처리(select 문일때)
	if(rs.next()){
		count = rs.getInt(1);
	}
	
	// 6단계 - 종료
	rs.close();
	psmt.close();
	conn.close();
	
	// JSON 데이터생성 및 전송
	/* String json = "{'result': 1}"; 로 해되되지만 앞으로 여러개를 할 거기때문에 라이브러리로 한다.*/
	JSONObject json = new JSONObject();
	json.put("result", count);
	
	out.print(json);

%>