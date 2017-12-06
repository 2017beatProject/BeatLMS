package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;

import com.beat.util.LMSDao;

public class LoginDao extends LMSDao{
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public LoginDao(){
		conn=super.conn;
	}
		
	public ArrayList<LoginDto> memberLogin(String mid, String mpw) {
		//로그인할 때 쓰는 매소드
		//String sql = "select count(*) as cnt from lmsmember "
		
		String sql = "select mid from lmsmember "
				+ "where mid like '%' || ? || '%' "
				+ "and CryptString.decrypt(mpw,'key') like '%' || ? || '%'";// 비번 암호화/복호화(DB 내부에서 값비교)
		
		
	//	System.out.println("mid"+":"+mid+"mpw"+":"+mpw);
	//	System.out.println(sql);
		
		ArrayList<LoginDto> LoginList = new  ArrayList<LoginDto>();
		boolean loginResult=false;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			
			rs=pstmt.executeQuery();
			
			
			System.out.println(mid+"로그인 창에서 입력된 정보"+mpw);
			
			while(rs.next()){
		
				
				System.out.println(mid+"맞는 정보 찾았음"+mpw);
			

				LoginDto bean = new LoginDto();	
				loginResult=true;
				
				bean.setMid(rs.getString("mid")); 
				bean.setloginResult(loginResult);
				
				LoginList.add(bean);	
				
				}
			
			
			return LoginList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return LoginList;
		}finally{
			destroy();
			System.out.println(loginResult);
		}
		
	}
}