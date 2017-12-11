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

	
	public int EditOne(int mnum, String mname, Date mbirth, int mzen, int mphone, String mmail, String maddress, int maddnum){
		String sql = "UPDATE LMSMEMBER SET MNAME=?, MBIRTH=?, MZEN=?, MPHONE=?, "
				+"MMAIL=?, MADDRESS=?, MADDNUM=? WHERE MNUM=?";
		//��� ���� ������Ʈ�ϰ�, ������ ������ �˻� ������ MNUM����
		int updateResult =0;
		
		try{
		pstmt = conn.prepareStatement(sql);
		
		//mnum, mname, mbirth, mzen, mphone, mmail, maddress, maddnum
		
		
		pstmt.setString(1, mname);
		pstmt.setDate(2, mbirth);
		pstmt.setInt(3, mzen);
		pstmt.setInt(4, mphone);
		pstmt.setString(5, mmail);
		pstmt.setString(6, maddress);
		pstmt.setInt(7, maddnum);

		pstmt.setInt(8, mnum);
		//�˻� ������ mnum
	
	
		
		updateResult = pstmt.executeUpdate();
		//������Ʈ �����ϸ� 1 �����ϸ� 0
		
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	} finally {
		
		destroy();
		System.out.println("updateresult="+updateResult);
		return updateResult;
	}
}
		
		
}
	
	

