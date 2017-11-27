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

public class AccountantDao extends LMSDao{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public AccountantDao(){
		LMSDao dao=new LMSDao();
		conn=dao.connection();
	}
	

	public void OneMember(int mnum) {
		String sql = "";

	}

	public AccountantDto memberOne(int mnum) {
		String sql = "select mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate where mnum=?";
		AccountantDto bean = new AccountantDto();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mnum);
			rs=pstmt.executeQuery();		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		
		return bean;
	}

	public List<AccountantDto> memberList() {
		String sql = "select mnum, snum,mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate from lmsMember";
		List<AccountantDto> list = new ArrayList<AccountantDto>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				AccountantDto accbean = new AccountantDto();
				accbean.setMnum(rs.getInt("mnum"));
				accbean.setSnum(rs.getInt("snum"));
				accbean.setMname(rs.getString("mname"));
				accbean.setMbirth(rs.getDate("mbirth"));
				accbean.setMzen(rs.getInt("mzen"));
				accbean.setMphone(rs.getInt("mphone"));
				accbean.setMmail(rs.getString("mmail"));
				accbean.setMaddress(rs.getString("maddress"));
				accbean.setMaddnum(rs.getInt("maddnum"));
				accbean.setJoindate(rs.getDate("joindate"));
				list.add(accbean);
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
		// 회원가입시 기재 사항- 회원고유번호(시퀀스), 신분식별(학생/직원), 아이디, 비밀번호, 이름, 생년월일, 성별,
		// 휴대전화번호
		// 이메일주소, 거주지 주소, 우편번호 (컬럼 개수는 9개)
		String sql = "insert into lmsMember values(membernum_seq, ?, ?, ?, ? ,? ,? ,?,?,? ,?,sysdate)";
		try {
			pstmt = conn.prepareStatement(sql);
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
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			destroy();
		}

	}

	public boolean memberLogin(String mid, String mpw) {

		String sql = "select count(*) from lmsMember where mid like ? "
				+ "and CryptString.decrypt(mpw,'key') like ?";
		boolean pwchk = false;
		try {
			pstmt = conn.prepareStatement(sql);
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

	private void destroy() { // 연결종료 메소드
		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
