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
	
	public int memberIdDoubleChk(String mid){
		String sql="select count(*) from lmsMember where mid like ?";
		int idchk=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs=pstmt.executeQuery();
			while(rs.next()){
				idchk=rs.getInt("count(*)");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		return idchk;
	}
	
	public void memberJoin(int snum, String mid, String mpw, String mname,
			Date mbirth, int mzen, int mphone, String mmail, String maddress, int maddnum
			) {
		// ȸ�����Խ� ���� ����- ȸ��������ȣ(������), �źнĺ�(�л�/����), ���̵�, ��й�ȣ, �̸�, �������, ����,
		// �޴���ȭ��ȣ
		// �̸����ּ�, ������ �ּ�, �����ȣ (�÷� ������ 9��)
		String sql = "insert into lmsMember values(membernum_seq, ?, ?, ?, ? ,? ,? ,?,?,?,sysdate)";
		try {
			pstmt = this.conn.prepareStatement(sql);
			pstmt.setInt(1, snum);
			pstmt.setString(2, mid);
			pstmt.setString(3, mpw);
			pstmt.setString(4, mname);
			pstmt.setDate(5, mbirth);
			pstmt.setInt(6, mzen);
			pstmt.setInt(7, mphone);
			pstmt.setString(8, mmail);
			pstmt.setString(9, maddress);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			super.destroy();
		}

	}

		
}
