package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class ComNumCheckDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ComNumCheckDao(){
		conn=super.conn;		
	}
	
	public int comNumcheck(int comnum, String comname, Date combirth){
		String sql="select count(*) from CompanyMember where comnum=? and comname like ? and combirth like ?";
		int chk=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, comnum);
			pstmt.setString(2, comname);
			pstmt.setDate(3, combirth);
			rs=pstmt.executeQuery();
			while(rs.next()){
				chk=rs.getInt("count(*)");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return chk;
	}
	
}
