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
		
		// 1�ܰ� - JDBC ����̹� �ε�
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2�ܰ� - �����ͺ��̽� ����
		Connection conn = DriverManager.getConnection(host,user,pass);
		
		// 3�ܰ� - SQL ���ఴü ����
		Statement stmt = conn.createStatement();
		
		// 4�ܰ� - SQL ����
		// executeUpdate() 	- INSERT, UPDATE, DELETE
		// executeQuery() 	- SELECT
		ResultSet rs = stmt.executeQuery("SELECT * from `USER`;");
	
		// 5�ܰ� - ����� ó��(SELCT �� ���)
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
		
		// 6�ܰ� - �����ͺ��̽� ����
		conn.close();
	}
}
