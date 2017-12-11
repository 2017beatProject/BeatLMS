package com.beat.Counsel.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class QnaEditUpdateDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	
	public QnaEditUpdateDao() {
		conn = super.conn;
	}
	
	public int editQna(String qnatitle, String qnacontents, int lmsblog){
	
		String sql ="UPDATE LMSBBSALL SET LMSBTITLE=?, LMSBCONTENT=? WHERE LMSBLOG=?";
		
		int updateResult = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qnatitle);
			pstmt.setString(2, qnacontents);
			pstmt.setInt(3, lmsblog);
		
			updateResult = pstmt.executeUpdate();
		
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			destroy();
		}
		
		
		return updateResult;
		
	}
	
	
	
}
