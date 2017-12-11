package com.beat.Management.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class LecturePageDao extends LMSDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public LecturePageDao() {
		conn=super.conn;
	}
	
	public ArrayList<LecturePageDto> getLecList(){
		
		String sql = "SELECT LECTSERINUM, ROOMNUMBER, TEACHERNAME, LECTURESTART, LECTUREEND, STUDENTTOTAL FROM LECTURE_RooM";
		//현재 정원은 빼두고 일단
		
		ArrayList<LecturePageDto> list = new ArrayList<LecturePageDto>();
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				LecturePageDto bean = new LecturePageDto();
				
				bean.setLecName(rs.getInt(1));
				bean.setLecRoom(rs.getString(2));
				bean.setLecTeacher(rs.getString(3));
				bean.setLecStart(rs.getDate(4));
				bean.setLecEnd(rs.getDate(5));
				bean.setNum(rs.getInt(6));
				bean.setMaxnum(20);
				list.add(bean);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			destroy();
		}
		
		
		
		return list;
	}
		
	public ArrayList<LecturePageDto> getOneLec(String lectserinum){
		
		String sql = "SELECT LECTSERINUM, ROOMNUMBER, TEACHERNAME, LECTURESTART, LECTUREEND, STUDENTTOTAL, Lectureintro FROM LECTURE_RooM WHERE LECTSERINUM ="+lectserinum;
		//현재 정원은 빼두고 일단
		
		ArrayList<LecturePageDto> list = new ArrayList<LecturePageDto>();
	
		try {
			
			pstmt = conn.prepareStatement(sql);
			//pstmt셋으로 변경해야하나
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				LecturePageDto bean = new LecturePageDto();
				
				bean.setLecName(rs.getInt(1));
				bean.setLecRoom(rs.getString(2));
				bean.setLecTeacher(rs.getString(3));
				bean.setLecStart(rs.getDate(4));
				bean.setLecEnd(rs.getDate(5));
				bean.setNum(rs.getInt(6));
				bean.setLecContent(rs.getString(7));
				bean.setMaxnum(20);
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
