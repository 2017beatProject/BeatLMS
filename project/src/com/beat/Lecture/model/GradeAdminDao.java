package com.beat.Lecture.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class GradeAdminDao extends LMSDao{
	//성적입력 수정 삭제
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	GradeAdminDao(){
		conn=super.conn;
	}
	
	public void gradeInsert(int mnum, int lectSeriNum, int javaPoint, int webPoint, int DBPoint){
		String sql="insert into "
				+ "Class_grade(pointSeriNum, mnum, lectSeriNum, "
				+ "javapoint, webpoint, dbpoint, pointAvr, pointSum) "
				+ "values(gradeSeri_sq.nextVal(), ? ,?, "
				+ "?, ?, ?, ?, ?)";
				
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mnum);
			pstmt.setInt(2, lectSeriNum);
			pstmt.setInt(3, javaPoint);
			pstmt.setInt(4, DBPoint);			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
	}
	
	public void gradeEdit(int mnum, int javaPoint, int webPoint, int DBPoint){
		String sql="update Class_Grade set javaPoint=?, webPoint=?, DBPoint=? where mnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,javaPoint);
			pstmt.setInt(2, webPoint);
			pstmt.setInt(3, DBPoint);
			pstmt.setInt(4, mnum);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void gradeDelete(int mnum){
	String sql="delete from Class_grade where mnum=?";
	
	try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, mnum);
		pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
		
	}
	
	
}
