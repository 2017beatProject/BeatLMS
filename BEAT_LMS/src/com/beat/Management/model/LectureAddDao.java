package com.beat.Management.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beat.util.LMSDao;


public class LectureAddDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public LectureAddDao() {
		conn=super.conn;
	}
	
	public void insertLec(String lecname, int lecroom, int lecteacher, int lecstucnt, Date lecstart, Date lecend, String leccontent){
	
	String sql1="insert into Lecture_Room("
	         + "lectSeriNum, lectureName, roomNumber, teacherName, studentTotal, "
	         + "lectureStart, lectureEnd, lectureintro) "
	         + "values(lecture_room_seq.nextval, ?, ?, (select lecturerName from lecturer where lecturerCode=?), ?, ?, ?, ?)";


			try {
				pstmt = conn.prepareStatement(sql1);
				
				pstmt.setString(1, lecname);
				pstmt.setInt(2, lecroom);
				pstmt.setInt(3, lecteacher);
				pstmt.setInt(4, lecstucnt);
				pstmt.setDate(5, lecstart);
				pstmt.setDate(6, lecend);
				pstmt.setString(7, leccontent);
				
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				
			} finally{
				
				destroy();
				
			}
	
	
	
	
	
	
	}
	
	
}
