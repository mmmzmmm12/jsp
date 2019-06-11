package kr.co.farmstory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.farmstory.config.DBConfig;
import kr.co.farmstory.config.SQL;
import kr.co.farmstory.vo.UserVO;
import kr.co.farmstory.vo.TermsVO;

public class UserDao {
	
	// ΩÃ±€≈Ê ∞¥√º
	private static UserDao instance =new UserDao();
	public static UserDao getInstance() {
		return instance;
	}
	private UserDao() {}
	
	private String terms = null;
	private String privacy = null;
	
	public TermsVO terms() throws Exception {

		// 1,2
		Connection conn = DBConfig.getConnection();
		
		// 3
		Statement stmt = conn.createStatement();
		
		// 4
		ResultSet rs = stmt.executeQuery(SQL.SELECT_TERMS);
		
		// 5
		TermsVO vo = new TermsVO();
		if(rs.next()) {
			vo.setTerms(rs.getString(1));
			vo.setPrivacy(rs.getString(2));
		}
		
		// 6
		rs.close();
		stmt.close();
		conn.close();
		
		return vo;
		
	}
	
	public void login() throws Exception{
		
		// 1,2
		Connection conn = DBConfig.getConnection();
		
		// 3
		Statement stmt = conn.createStatement();
		
		// 4
		ResultSet rs = stmt.executeQuery(SQL.SELECT_USER);
		
		// 5
		
		if(rs.next()) {
			
		}
		
		// 6
		
	}
	
	public void register(UserVO vo) throws Exception{

		// 1,2
		Connection conn = DBConfig.getConnection();
		
		// 3
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_USER);
		psmt.setString(1, vo.getUid());
		psmt.setString(2, vo.getPass());
		psmt.setString(3, vo.getName());
		psmt.setString(4, vo.getNick());
		psmt.setString(5, vo.getEmail());
		psmt.setString(6, vo.getHp());
		psmt.setString(7, vo.getZip());
		psmt.setString(8, vo.getAddr1());
		psmt.setString(9, vo.getAddr2());
		psmt.setString(10, vo.getRegip());
		
		// 4
		psmt.executeUpdate();
		
		// 5
		// 6
		psmt.close();
		conn.close();
	}
	
	public void checkUid() throws Exception{

		// 1,2
		Connection conn = DBConfig.getConnection();
		
		// 3
		
		
		// 4
		
		
		// 5
		
		
		// 6
	}

	
	
}
