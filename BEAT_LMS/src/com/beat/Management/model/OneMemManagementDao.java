package com.beat.Management.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class OneMemManagementDao extends LMSDao{
	

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public OneMemManagementDao() {
		conn=super.conn;
	}

	public ArrayList<OneMemManagementDto> getOne(String mnum) {

		ArrayList<OneMemManagementDto> list =new ArrayList<OneMemManagementDto>();
		
		String sql = "SELECT MNUM, SNUM, MID, MNAME, MBIRTH, MZEN, MPHONE, MMAIL, MADDRESS, MADDNUM, JOINDATE, dept "
				+"FROM LMSMEMBER WHERE Mnum = ?";
		//비번빼고 다 받았습니다.
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mnum); 
			rs=pstmt.executeQuery();
			
			if(rs.next()){ //어차피 한명이니까
				
				OneMemManagementDto bean = new OneMemManagementDto();
			
				//MNUM, SNUM, MID, MNAME, MBIRTH, MZEN, MPHONE, MMAIL, MADDRESS, MADDNUM, JOINDATE, rightcode
				bean.setmNum(rs.getInt(1));
				bean.setsNum(rs.getInt(2));
				bean.setmId(rs.getString(3));
				bean.setmName(rs.getString(4));
				bean.setmBirth(rs.getDate(5));
				bean.setmZen(rs.getInt(6));
				bean.setmPhone(rs.getInt(7));
				bean.setmMail(rs.getString(8));
				bean.setMAddress(rs.getString(9));
				bean.setmAddnum(rs.getInt(10));
				bean.setJoinDate(rs.getDate(11));
				bean.setTeam(rs.getString(12));
				
				list.add(bean);	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();	
		}finally{
			destroy();
			
		}
		
		return list;
		
	}
}