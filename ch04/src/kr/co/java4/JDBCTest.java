package kr.co.java4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * ��¥ : 2019/05/05
 * �̸� : ���µ�
 * ���� : JDBC ���α׷��� �ǽ�����
 */

public class JDBCTest {
	public static void main(String[] args) {
		//������ ���̽� ����
		String host = "jdbc:mysql://192.168.0.161:3306/jtd";
		String user = "jtd";
		String pass = "1234";
		Connection conn = null;
		
	try {
		//1�ܰ� - JDBC �帮�̹� �ε�
		Class.forName("com.mysql.jdbc.Driver");
		
		//2�ܰ� - �����ͺ��̽� ����
		conn = DriverManager.getConnection(host,user,pass);
		if(conn != null) {
			System.out.println("�����ͺ��̽� ���Ӽ���...");
		}
		
		//3�ܰ� - SQL �������� ��ü����
		//4�ܰ� - SQL ����
		//5�ܰ� - ResultSet ������ ó��(SELCT�� ���)
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		//6�ܰ� - �����ͺ��̽� ����
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
			
		}
	}

}
