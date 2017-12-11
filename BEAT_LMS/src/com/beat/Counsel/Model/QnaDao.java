package com.beat.Counsel.Model;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class QnaDao extends LMSDao{

	PreparedStatement pstmt;
	ResultSet rs;
	
	public QnaDao() {
		// TODO Auto-generated constructor stub
	}
	
	public ArrayList<QnaDto> qnalist(){
	
		String sql="select lmsblog, rowNum, lmsbauthor, lmsbdate, lmsbtitle, lmsbcontent "
				+ "from lmsbbsAll where lmsbcode=9003";
		ArrayList<QnaDto> list= new ArrayList<QnaDto>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
/*				private int lmsblog;
				private int qnaLog;
				private String qnaTitle;
				private String mid;
				private Date qnaDate;
				private int qnaCount;*/
				
				QnaDto bean=new QnaDto();
				
				bean.setLmsblog(rs.getInt("lmsblog"));
				bean.setQnaLog(rs.getInt("rowNum"));
				bean.setQnaDate(rs.getDate("lmsbdate"));
				bean.setQnaAuthor(rs.getString("lmsbauthor"));
				bean.setQnaTitle(rs.getString("lmsbtitle"));
				bean.setQnaContent(rs.getString("lmsbcontent"));
				list.add(bean);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
		
	}
	
	
	
}
