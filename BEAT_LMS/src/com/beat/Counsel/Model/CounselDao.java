package com.beat.Counsel.Model;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class CounselDao extends LMSDao{

	PreparedStatement pstmt;
	ResultSet rs;
	String mname;
	int mphone;
	
	public CounselDao() {
	
		conn=super.conn;
	}
	
	public void conselApply(String mid, String counselContent){
/*		private int counselLog;
		private String mname;
		private String mid;
		private int mphone;
		private String counselContant;
		private Date counseldate;*/
		
		
		String sqlData="select mname, mphone from lmsMember where mid=?";
				
		
		int mphone=0;
		String sqlInsert="insert into lmsCounsel(counselLog, mname, mid, mphone, counselcontent, counseldate) "
				+ " values(counsel_log_sq.nextval, (select mname from lmsmember where mid=?)"
				+ ", ?, (select mphone from lmsmember where mid=?), ?, sysdate)";		
		try {			
		
			pstmt=conn.prepareStatement(sqlInsert);
			pstmt.setString(1, mid);
			pstmt.setString(2, mid);
			pstmt.setString(3, mid);
			pstmt.setString(4, counselContent);
			pstmt.executeUpdate();		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		
	}
	
	
	public ArrayList<CounselDto> counselListAll(){ //상담신청 글 다 보는 method
		
		ArrayList<CounselDto> list= new ArrayList<CounselDto>();
		String sql="select counselLog, mname, mid, mphone, counselContant, counseldate from lmsCounsel";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				CounselDto bean=new CounselDto();
				bean.setCounselLog(rs.getInt("counselLog"));
				bean.setMname(rs.getString("mname"));
				bean.setMid(rs.getString("mid"));
				bean.setMphone(rs.getInt("mphone"));				
				bean.setCounseldate(rs.getDate("counseldate"));
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
	
	
	public CounselDto couselSelectOne(int log){
		CounselDto bean=new CounselDto();
		String sql="select mname, mid, mphone, counselContant, counseldate from lmsCounsel where counselLog=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, log);
			while(rs.next()){
				bean.setCounselLog(rs.getInt("counselLog"));
				bean.setMname(rs.getString("mname"));
				bean.setMid(rs.getString("mid"));
				bean.setMphone(rs.getInt("mphone"));				
				bean.setCounseldate(rs.getDate("counseldate"));
				}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bean;
	}
	
	
	
	
}
