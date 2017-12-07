package com.beat.Management.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.beat.util.LMSDao;

public class OneMemManagementEditUpdateDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public OneMemManagementEditUpdateDao() {
		conn=super.conn;
	}
	
	
	public void EditOne(){
		
		
	}
	
	

}
