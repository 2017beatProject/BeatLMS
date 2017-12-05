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
		String sql = "insert into lmsMember(mnum, snum, mid, mpw, mname, "
				+ "mbirth, mzen, mphone, mmail, "
				+ "maddress, maddnum, joindate)"
				+ " values(membernum_seq.nextVal, 2,"// �������� ���� �Է� ���� snum �ڸ�
				+ " ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";// ��� ��ȣȭ/��ȣȭ(DB ���ο��� ����)
		boolean pwchk = false;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			rs=pstmt.executeQuery();
			System.out.println(mid+"�α��� â���� �Էµ� ����"+mpw);
			pwchk = false;
			while(rs.next()){
			if (rs.getInt("cnt") == 1) {
				System.out.println(mid+"�´� ���� ã����"+mpw);
				pwchk = true;
				return pwchk;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			destroy();
		}
		System.out.println(pwchk);
		return pwchk;
	}
}