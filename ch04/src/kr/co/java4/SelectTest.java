package kr.co.java4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SelectTest {
	public static void main(String[] args) throws Exception {
		
		String host = "jdbc:mysql://192.168.0.161:3306/jtd";
		String user = "jtd";
		String pass = "1234";
		
		// 1단계 - JDBC 드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계 - 데이터베이스 접속
		Connection conn = DriverManager.getConnection(host,user,pass);
		
		// 3단계 - SQL 실행객체 생성
		Statement stmt = conn.createStatement();
		
		// 4단계 - SQL 실행
		// executeUpdate() 	- INSERT, UPDATE, DELETE
		// executeQuery() 	- SELECT
		ResultSet rs = stmt.executeQuery("SELECT * from `USER`;");
	
		// 5단계 - 결과셋 처리(SELCT 일 경우)
		while(rs.next()) {
			String uid	= rs.getString(1);
			String name	= rs.getString("name");
			int	gender	= rs.getInt(3);
			String hobby = rs.getString("hobby");
			String addr  = rs.getString(5);
			
			System.out.print("=========================");
			System.out.println("uid : " + uid);
			System.out.println("name : " + name);
			System.out.println("gender : " + gender);
			System.out.println("hobby : " + hobby);
			System.out.println("addr : " + addr);
			System.out.println("------------------------");
			
		}
		
		// 6단계 - 데이터베이스 종료
		conn.close();
	}
}
