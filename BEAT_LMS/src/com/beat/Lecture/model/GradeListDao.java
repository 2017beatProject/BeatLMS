package com.beat.Lecture.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

public class GradeListDao extends LMSDao{
	
	PreparedStatement pstmt;
	ResultSet rs;
	
	public GradeListDao() {
		conn=super.conn;
	}
	
	public ArrayList<StudentGradeDto> gradeListAll(){// 전체 수강생 리스트 보기
		String sql="select lmsMember.mnum,"
				+ "lmsMember.mname,"
				+ "lmsMember.mphone,"
				+ "lmsMember.mmail,"
				+ " Class_grade.javapoint,"
				+ " Class_grade.webpoint,"
				+ " Class_grade.DBpoint "
				+ " Class_grade.pointAvr,"
				+ " Class_grade.pointSum, "
				+ "from lmsMember, Class_grade "
				+ "where Lmsmember.mnum=Class_grade.mnum";
			StudentGradeDto bean=new StudentGradeDto();
			ArrayList<StudentGradeDto> list=new ArrayList<StudentGradeDto>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				bean.setMnum(rs.getInt(1));
				bean.setMname(rs.getString(2));
				bean.setMphone(rs.getInt(3));
				bean.setMmail(rs.getString(4));
				bean.setJavapoint(rs.getInt(5));
				bean.setWebpoint(rs.getInt(6));
				bean.setDbpoint(rs.getInt(7));
				bean.setPointavr(rs.getLong(8));
				bean.setPointsum(rs.getInt(9));	
				list.add(bean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		return list;
	}
	
	
	public StudentGradeDto gradeSelectOne(int mnum){
		String sql="select lmsMember.mnum,"
				+ "lmsMember.mname,"
				+ "lmsMember.mphone,"
				+ "lmsMember.mmail,"
				+ " Class_grade.javapoint,"
				+ " Class_grade.webpoint,"
				+ " Class_grade.DBpoint,"
				+ " Class_grade.pointAvr,"
				+ " Class_grade.pointSum, "
				+ " from lmsMember, Class_grade "
				+ "where Lmsmember.mnum=?";
		
		StudentGradeDto bean=new StudentGradeDto();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mnum);
			rs=pstmt.executeQuery();
			while(rs.next()){
				bean.setMnum(rs.getInt(1));
				bean.setMname(rs.getString(2));
				bean.setMphone(rs.getInt(3));
				bean.setMmail(rs.getString(4));
				bean.setJavapoint(rs.getInt(5));
				bean.setWebpoint(rs.getInt(6));
				bean.setDbpoint(rs.getInt(7));
				bean.setPointavr(rs.getLong(8));
				bean.setPointsum(rs.getInt(9));	
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		return bean;
	}
	
	
	
}
