package kr.co.java4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * �� ¥ : 2019-05-07
 * �� �� : ���µ�
 * �� �� : INSERT �ǽ��ϱ�
 */

public class InsertTest {
	public static void main(String[] args) throws Exception {
		
		// �����ͺ��̽� ����
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
		String sql = "INSERT INTO `USER` VALUES ('anbek','������',1,'�|����|��ȭ','����');";
		stmt.executeUpdate(sql);
		
		// 5�ܰ� - ����� ó��(SELECT�� ���)
		
		// 6�ܰ� - ������ ���̽� ����
		conn.close();
		
		System.out.println("������ INSERT �Ϸ�...");
		
	}
}
