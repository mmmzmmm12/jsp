package kr.co.java4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DeleteTest {
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
		String sql = "DELETE FROM `USER` WHERE NAME = 'ȫ�浿';";
		stmt.executeUpdate(sql);
	
		// 5�ܰ� - ����� ó��(SELCT �� ���)
		
		// 6�ܰ� - �����ͺ��̽� ����
		conn.close();
	}
}
