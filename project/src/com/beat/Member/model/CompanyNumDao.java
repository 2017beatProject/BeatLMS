package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.beat.util.LMSDao;

public class CompanyNumDao extends LMSDao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void companyNumCheck(int comnum, String name, Date combirth, int comzen){
		
	}
	
}
