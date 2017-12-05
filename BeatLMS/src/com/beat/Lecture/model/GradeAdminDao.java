package com.beat.Lecture.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class GradeAdminDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	GradeAdminDao(){
		conn=super.conn;
	}
	
	
	
}
