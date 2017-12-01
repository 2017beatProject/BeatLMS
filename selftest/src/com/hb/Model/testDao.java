package com.hb.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class testDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public testDao() {
		init();
	}
	
	public void init(){
		//System.out.println("인잇들어감");
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe" , "scott", "tiger");
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		
	}
	
	private void destroy(){
	
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public int matchAcc(String id, String pw){//id가 사번, pw가 네임으로 테스트 진행//둘다 스트링
		String sql="select count(*) as cnt from guest01 where sabun=? and name=?";
		
		
		System.out.println("메소드 사용함");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw); 

			rs =pstmt.executeQuery();
			
			if(rs.next()){
				
				return rs.getInt("cnt");
			}
			
			return 0;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}finally{destroy();}
		
	} 
	
	

}
