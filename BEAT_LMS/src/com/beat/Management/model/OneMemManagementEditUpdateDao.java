package com.beat.Management.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

import com.beat.util.LMSDao;

public class OneMemManagementEditUpdateDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;

	public OneMemManagementEditUpdateDao() {
		conn=super.conn;
	}
	
	
	public int EditOne(int mnum, int snum, String mid, String mname, Date mbirth, int mzen, int mphone, String mmail, String maddress, int maddnum, Date joindate, String team){
		String sql = "UPDATE LMSMEMBER SET MNUM=?, SNUM=?, MID=?, MNAME=?, MBIRTH=?, MZEN=?, MPHONE=?, "
				+"MMAIL=?, MADDRESS=?, MADDNUM=?, JOINDATE=?, dept=? WHERE MNUM=?";
		//��� ���� ������Ʈ�ϰ�, ������ ������ �˻� ������ MNUM����
		int updateResult =0;
		
		try{
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, mnum);
		pstmt.setInt(2, snum);
		pstmt.setString(3, mid);
		pstmt.setString(4, mname);
		pstmt.setDate(5, mbirth);
		pstmt.setInt(6, mzen);
		pstmt.setInt(7, mphone);
		pstmt.setString(8, mmail);
		pstmt.setString(9, maddress);
		pstmt.setInt(10, maddnum);
		pstmt.setDate(11, joindate);
		pstmt.setString(12,  team);
		
		
		//�˻� ������ mnum
		pstmt.setInt(13, mnum);
	
		
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
	
	

