package com.beat.Management.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class LectureDeleteDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	
	
	public LectureDeleteDao() {
		conn=super.conn;
	}
	
	
	public int delLec(int serinum){
		
		String sql ="DELETE FROM LECTURE_ROOM WHERE LECTSERINUM="+serinum;
		int delResult =0;
		
		try {
			pstmt= conn.prepareStatement(sql);
			//pstmt.setInt(1, serinum);
			
			delResult = pstmt.executeUpdate();
			 //�����ϸ� 1 �����ϸ� 0
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			destroy();
		}
		
		
		
		return delResult;
	}
	
	
	
}
