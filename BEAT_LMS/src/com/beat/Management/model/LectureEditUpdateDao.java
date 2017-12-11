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
		//���� ���ǽø���ѹ��� ���Ǹ��̶� ��ġ�µ� ��¼��?lectSeriNum=?, /lectureName=?, �ϴ� ������ �ø���ѹ��� ���Ǹ��� ���ϵ���..
		//�޾ƿ� lecname�� �ø���ѹ��� �޾ƿ�������
		
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
			
			//�˻� ������ �Ǵ� ���ǽø����ȣ(lecname�̶� �̸����� �޾ƿ��� ��)
			pstmt.setString(7, lecname);
		
			updateResult = pstmt.executeUpdate();
			//������Ʈ �����ϸ� 1 �����ϸ� 0
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			destroy();
			
			return updateResult;
		}
	}
	
	
}
