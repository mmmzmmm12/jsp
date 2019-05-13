package kr.co.java4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UpdateTest {
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
		String sql = "UPDATE `USER` SET `addr` = '삼천포' WHERE NAME = '홍길동';";
		stmt.executeUpdate(sql);
	
		// 5단계 - 결과셋 처리(SELCT 일 경우)
		
		// 6단계 - 데이터베이스 종료
		conn.close();
	}
}
