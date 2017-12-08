package com.beat.Counsel.Model;

import java.sql.PreparedStatement;

import com.beat.util.LMSDao;

public class CounselDao extends LMSDao{

	PreparedStatement pstmt;
	ResultSet rs;
	
	
	public CounselDao() {
	
		conn=super.conn;
	}
	
	
	
}
