package kr.co.farmstory.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

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




















