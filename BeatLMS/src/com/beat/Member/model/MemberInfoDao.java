package com.beat.Member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberInfoDao extends LMSDao{

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
		
	public MemberInfoDao(){
		conn=super.conn;
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

}
