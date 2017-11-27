package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao extends LMSDao{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public LoginDao(){
		conn=super.conn;
	}
		
	public boolean memberLogin(String mid, String mpw) {
		//로그인할 때 쓰는 매소드
		String sql = "select count(*) from lmsMember "
				+ "where mid like ? "
				+ "and CryptString.decrypt(mpw,'key') like ?";// 비번 암호화/복호화(DB 내부에서 값비교)
		boolean pwchk = false;
		try {
			pstmt = this.conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			rs = pstmt.executeQuery();
			if (rs.getInt("count(*)") == 1)
				pwchk = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		return pwchk;
	}
	
	
	
	
}
