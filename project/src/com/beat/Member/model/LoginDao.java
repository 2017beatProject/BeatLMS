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
		//�α����� �� ���� �żҵ�
		//String sql = "select count(*) as cnt from lmsmember "
		
		String sql = "select mid from lmsmember "
				+ "where mid like '%' || ? || '%' "
				+ "and CryptString.decrypt(mpw,'key') like '%' || ? || '%'";// ��� ��ȣȭ/��ȣȭ(DB ���ο��� ����)
		
		
	//	System.out.println("mid"+":"+mid+"mpw"+":"+mpw);
	//	System.out.println(sql);
		
		ArrayList<LoginDto> LoginList = new  ArrayList<LoginDto>();
		boolean loginResult=false;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, mpw);
			
			rs=pstmt.executeQuery();
			
			
			System.out.println(mid+"�α��� â���� �Էµ� ����"+mpw);
			
			while(rs.next()){
		
				
				System.out.println(mid+"�´� ���� ã����"+mpw);
			

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