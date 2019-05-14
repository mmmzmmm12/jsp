<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");
	
	String hp = request.getParameter("hp");
	
	final String host = "jdbc:mysql://192.168.0.161:3306/jtd";
	final String user = "jtd";
	final String pass = "1234";
	
	int count = 0;
	
	// 1단계 - JDBC 드라이브
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2단계 - 데이터베이스접속
	Connection conn = DriverManager.getConnection(host,user,pass);
	
	// 3단계 - SQL
	Statement stmt = conn.createStatement();
	
	// 4단계 - SQL
	ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM `JSP_USER` WHERE hp ='"+hp+"';");
	
	// 5단계 - 결과셋 처리(select 문일때)
	if(rs.next()){
		count = rs.getInt(1);
	}
	
	// 6단계 - 종료
	rs.close();
	stmt.close();
	conn.close();
	
	// JSON 데이터생성 및 전송
	/* String json = "{'result': 1}"; 로 해되되지만 앞으로 여러개를 할 거기때문에 라이브러리로 한다.*/
	JSONObject json = new JSONObject();
	json.put("result", count);
	
	out.print(json);

%>