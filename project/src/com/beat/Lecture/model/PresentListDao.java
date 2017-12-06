package com.beat.Lecture.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class PresentListDao extends LMSDao {
////// 출석 출력에 관한 dao
	
	PreparedStatement pstmt;
	ResultSet rs;

	public PresentListDao() {
		conn = super.conn;
	}

	public ArrayList<StudentPresentDto> presentListAll(){
		String sql="select ";
		ArrayList<StudentPresentDto> bean=new ArrayList<StudentPresentDto>();
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}
	
	
}
