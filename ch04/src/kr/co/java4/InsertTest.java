package kr.co.java4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * 날 짜 : 2019-05-07
 * 이 름 : 정태동
 * 내 용 : INSERT 실습하기
 */

public class InsertTest {
	public static void main(String[] args) throws Exception {
		
		// 데이터베이스 정보
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
		String sql = "INSERT INTO `USER` VALUES ('anbek','김춘추',1,'운동|독서|영화','경주');";
		stmt.executeUpdate(sql);
		
		// 5단계 - 결과셋 처리(SELECT일 경우)
		
		// 6단계 - 데이터 베이스 종료
		conn.close();
		
		System.out.println("데이터 INSERT 완료...");
		
	}
}
