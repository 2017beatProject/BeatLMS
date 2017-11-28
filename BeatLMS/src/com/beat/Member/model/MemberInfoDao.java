package com.beat.Member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.beat.util.LMSDao;

public class MemberInfoDao extends LMSDao{

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
		
	public MemberInfoDao(){
		conn=super.conn;
	}
		
	
	public MemberDto memberOne(int mnum) {
		String sql = "select mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate where mnum=?";
		MemberDto bean = new MemberDto();
		
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
	
	
	public List<MemberInfoDto> memberList() {
		String sql = "select mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate from lmsMember";
		List<MemberInfoDto> list = new ArrayList<MemberInfoDto>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberInfoDto infobean = new MemberInfoDto();			
				infobean.setMname(rs.getString("mname"));				
				infobean.setMbirth(rs.getDate("mbirth"));
				infobean.setMzen(rs.getInt("mzen"));
				infobean.setMphone(rs.getInt("mphone"));
				infobean.setMmail(rs.getString("mmail"));
				infobean.setMaddress(rs.getString("maddress"));
				infobean.setMaddnum(rs.getInt("maddnum"));
				infobean.setJoindate(rs.getDate("joindate"));
				list.add(infobean);
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
