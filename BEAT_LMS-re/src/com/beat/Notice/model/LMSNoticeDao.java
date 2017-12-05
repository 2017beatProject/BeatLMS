package com.beat.Notice.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class LMSNoticeDao extends LMSDao{
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	LMSNoticeDao(){
		this.conn=super.conn;
	}
	
	public void insertNotice(String noticeWriter, String noticeTitle, String noticeCont ){
		String sql="";
		try {
			pstmt=conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
}
