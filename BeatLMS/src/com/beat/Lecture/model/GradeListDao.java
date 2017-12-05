package com.beat.Lecture.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class GradeListDao extends LMSDao{
	
	PreparedStatement pstmt;
	ResultSet rs;
	
	public GradeListDao() {
		conn=super.conn;
	}
	
	public ArrayList<StudentGradeDto> gradeListAll(){
		String sql="select lmsMember.mnum, "
				+ "lmsMember.mname, "
				+ "lmsMember.mphone, "
				+ "lmsMember.mmail, "
				+ "Class_grade.javapoint, "
				+ "Class_grade.webpoint, "
				+ "Class_grade.DBpoint, "
				+ "Class_grade.pointAvr, "
				+ "Class_grade.pointSum "
				+ "from lmsMember, Class_grade "
				+ "where Lmsmember.mnum=Class_grade.mnum";
			ArrayList<StudentGradeDto> list=new ArrayList<StudentGradeDto>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			System.out.println(sql);
			while(rs.next()){
				StudentGradeDto bean=new StudentGradeDto();
				bean.setMnum(rs.getInt("Mnum"));
				bean.setMname(rs.getString("Mname"));
				bean.setMphone(rs.getInt("Mphone"));
				bean.setMmail(rs.getString("Mmail"));
				bean.setJavapoint(rs.getInt("Javapoint"));
				bean.setWebpoint(rs.getInt("Webpoint"));
				bean.setDbpoint(rs.getInt("Dbpoint"));
				bean.setPointavr(rs.getLong("Pointavr"));
				bean.setPointsum(rs.getInt("Pointsum"));	
				list.add(bean);
			}
			System.out.println("학생 목록 출력");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			destroy();
		}
		return list;
	}
	
	
	public StudentGradeDto gradeSelectOne(int mnum){
		String sql="select lmsMember.mnum, "
				+ "lmsMember.mname, "
				+ "lmsMember.mphone, "
				+ "lmsMember.mmail, "
				+ "Class_grade.javapoint, "
				+ "Class_grade.webpoint, "
				+ "Class_grade.DBpoint, "
				+ "Class_grade.pointAvr, "
				+ "Class_grade.pointSum "
				+ "from lmsMember, Class_grade "
				+ "where Lmsmember.mnum=?";
		
		StudentGradeDto bean = new StudentGradeDto();
		System.out.println(sql);
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mnum);
			rs=pstmt.executeQuery();
			while(rs.next()){
				bean.setMnum(rs.getInt("Mnum"));
				bean.setMname(rs.getString("Mname"));
				bean.setMphone(rs.getInt("Mphone"));
				bean.setMmail(rs.getString("Mmail"));
				bean.setJavapoint(rs.getInt("Javapoint"));
				bean.setWebpoint(rs.getInt("Webpoint"));
				bean.setDbpoint(rs.getInt("Dbpoint"));
				bean.setPointavr(rs.getLong("Pointavr"));
				bean.setPointsum(rs.getInt("Pointsum"));	
			}
			System.out.println("성적 보기");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		return bean;
	}
	
	
	
}
