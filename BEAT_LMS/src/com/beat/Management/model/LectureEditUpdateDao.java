package com.beat.Management.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class LectureEditUpdateDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	
	public LectureEditUpdateDao() {
		conn=super.conn;
	}
	
	public int editLec(String lecname, int lecroom, int lecteacher, int lecstucnt, Date lecstart, Date lecend, String leccontent){
		//여기 강의시리얼넘버랑 강의명이랑 겹치는데 어쩌지?lectSeriNum=?, /lectureName=?, 일단 수정에 시리얼넘버랑 강의명은 안하도록..
		//받아온 lecname은 시리얼넘버로 받아와져있음
		
		String sql ="UPDATE LECTURE_Room SET roomNumber=?, teacherName=(select lecturerName from lecturer where lecturerCode=?), studentTotal=?, lectureStart=?, lectureEnd=?, lectureintro=? "
				+"WHERE lectSeriNum=?";

		int updateResult=0;
		
		try{
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, lecroom);
			pstmt.setInt(2, lecteacher);
			pstmt.setInt(3, lecstucnt);
			pstmt.setDate(4, lecstart);
			pstmt.setDate(5, lecend);
			pstmt.setString(6, leccontent);
			
			//검색 기준이 되는 강의시리얼번호(lecname이란 이름으로 받아오긴 함)
			pstmt.setString(7, lecname);
		
			updateResult = pstmt.executeUpdate();
			//업데이트 성공하면 1 실패하면 0
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			destroy();
			
			return updateResult;
		}
	}
	
	
}
