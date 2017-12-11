package com.beat.Counsel.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class QnaDetailDao extends LMSDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public QnaDetailDao() {
	 conn = super.conn;
	}
	
	
	public ArrayList<QnaDto> getOneQna(int lmsblog){
		
		
		String sql = "select lmsblog, rowNum, lmsbauthor, lmsbdate, lmsbtitle, lmsbcontent "
				+ "from lmsbbsAll where lmsbcode = 9003 and lmsblog = "+lmsblog;
		
		ArrayList<QnaDto> list = new ArrayList<QnaDto>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				QnaDto bean = new QnaDto();
				
				bean.setLmsblog(rs.getInt("lmsblog"));
				bean.setQnaLog(rs.getInt("rowNum")); //rownum을 qnalog에 할당
				bean.setQnaDate(rs.getDate("lmsbdate"));
				bean.setQnaAuthor(rs.getString("lmsbauthor"));
				bean.setQnaTitle(rs.getString("lmsbtitle"));
				bean.setQnaContent(rs.getString("lmsbcontent"));
				
				list.add(bean);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			
			destroy();
		}
		
		
		
		
		
		
		return list;
		
	}
	
	
	
}
