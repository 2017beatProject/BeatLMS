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

public class AccountantAdminDao extends LMSDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public AccountantAdminDao() {
		this.conn = super.conn;
	}

	public ArrayList<String> memberIdDoubleChk() {
		String sql = "select mid from lmsMember";
		ArrayList<String> list=new ArrayList<String>();
		String mid="";
		try {
			pstmt = conn.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mid = rs.getString("mid");
				list.add(mid);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			destroy();
		}
		return list;
	}

	public void memberJoin(int snum, String mid, String mpw, String mname,
			Date mbirth, int mzen, int mphone, String mmail, String maddress,
			int maddnum) {
		// 12�� �׸� ȸ�����Խ� ���� ����- ȸ��������ȣ(������), �źнĺ�(�л�/����), ���̵�, ��й�ȣ, �̸�, �������, ����,
		// �޴���ȭ��ȣ
		// �̸����ּ�, ������ �ּ�, �����ȣ, ������ - �÷����� ���� ��ϵ� �ִµ� ���߿� �߰��ϴ� ������ �� �Ŷ� �����Ҷ��� ���� �ʴ´�.
		String sql = "insert into lmsMember"
				+ "(mnum, snum, mid, mpw, mname,"
				+ " mbirth, mzen, mphone, mmail, maddress, "
				+ "maddnum, joindate)"
				+ " values(membernum_seq.nextval, ?, ?, CryptString.encrypt(?,'key'), ? "//��й�ȣ �Է��� ��ȣȭ��
				+ ",? ,? ,? ,?, ?,"
				+ "?, sysdate)";
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
			pstmt.setInt(10, maddnum);
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
