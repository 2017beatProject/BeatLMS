package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;

import com.beat.util.LMSDao;

public class LoginDao extends LMSDao{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public LoginDao(){
		conn=super.conn;
	}
		
	public boolean memberLogin(String mid, String mpw) {
		//로그인할 때 쓰는 매소드
		String sql = "select count(*) as cnt from lmsmember "
				+ "where mid like '%' || ? || '%' "
				+ "and CryptString.decrypt(mpw,'key') like '%' || ? || '%'";// 비번 암호화/복호화(DB 내부에서 값비교)
		boolean pwchk = false;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			rs=pstmt.executeQuery();
			System.out.println(mid+"로그인 창에서 입력된 정보"+mpw);
			while(rs.next()){
			if (rs.getInt("cnt") == 1)
				System.out.println(mid+"맞는 정보 찾았음"+mpw);
				pwchk = true;
				return pwchk;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			destroy();
		}
		return pwchk;
	}
}
