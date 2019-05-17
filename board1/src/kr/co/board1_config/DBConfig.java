package kr.co.board1_config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	private static String host = "jdbc:mysql://192.168.0.161:3306/jtd";
	private static String user = "jtd";
	private static String pass = "1234";
	
	
	public static Connection getConnection() throws Exception { // static 선언시 new 생성안하고 사용할수 있다. 
		
		// 1단계 - JDBC 드라이브
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계 - 데이터베이스접속
		Connection conn = DriverManager.getConnection(host,user,pass);
		
		return conn;
		
	}
}

// 공통된 부분은 이렇게 클래스와 , 메서드를 생성하여 관리하면 편하다
// 추가적으로 static을 선언하면 new 객체를 생성하지 않아도 
// 쓸 수 있으므로 편하다.

// 특히나 host나 id, pass 등은 1나 바뀌면 각각의 페이지를 
// 돌아다니며 수정해야하니 이렇게 모아서 관리하면 편하다.
