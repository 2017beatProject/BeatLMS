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
		//�α����� �� ���� �żҵ�
		String sql = "select count(*) as cnt from lmsmember "
				+ "where mid like '%' || ? || '%' "
				+ "and CryptString.decrypt(mpw,'key') like '%' || ? || '%'";// ��� ��ȣȭ/��ȣȭ(DB ���ο��� ����)
		boolean pwchk = false;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			rs=pstmt.executeQuery();
			System.out.println(mid+"�α��� â���� �Էµ� ����"+mpw);
			while(rs.next()){
			if (rs.getInt("cnt") == 1)
				System.out.println(mid+"�´� ���� ã����"+mpw);
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
