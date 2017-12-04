package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.beat.util.LMSDao;

public class AccountantAdminDao extends LMSDao{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public AccountantAdminDao(){
	 this.conn=super.conn;	
	}
	
//	public void memberJoin(int snum, String mid, String mpw, String mname,
	public void memberJoin(String mid, String mpw, String mname,
			Date mbirth, int mzen, int mphone, String mmail, String maddress, int maddnum
			) {
		// ȸ�����Խ� ���� ����- ȸ��������ȣ(������), �źнĺ�(�л�/����), ���̵�, ��й�ȣ, �̸�, �������, ����,
		// �޴���ȭ��ȣ
		// �̸����ּ�, ������ �ּ�, �����ȣ (�÷� ������ 9��)
//		String sql = "insert into lmsMember values(membernum_seq, 2, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		String sql = "insert into lmsMember(mnum, snum, mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate) values(membernum_seq.nextVal, 2, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		
		try {
			pstmt = this.conn.prepareStatement(sql);
//			pstmt.setInt(1, snum);
//			pstmt.setString(2, mid);
//			pstmt.setString(3, mpw);
//			pstmt.setString(4, mname);
//			pstmt.setDate(5, mbirth);
//			pstmt.setInt(6, mzen);
//			pstmt.setInt(7, mphone);
//			pstmt.setString(8, mmail);
//			pstmt.setString(9, maddress);
			
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			pstmt.setString(3, mname);
			pstmt.setDate(4, mbirth);
			pstmt.setInt(5, mzen);
			pstmt.setInt(6, mphone);
			pstmt.setString(7, mmail);
			pstmt.setString(8, maddress);
			pstmt.setInt(9, maddnum);
			System.out.println(sql);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			super.destroy();
		}

	}

		
}
