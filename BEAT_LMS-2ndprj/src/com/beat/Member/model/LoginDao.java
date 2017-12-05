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
	//	String sql = "select count(*) as cnt from lmsmember "
	//			+ "where mid like '%' || ? || '%' "
	//			+ "and CryptString.decrypt(mpw,'key') like '%' || ? || '%'";// ��� ��ȣȭ/��ȣȭ(DB ���ο��� ����)
	
		String sql = "select CryptString.decrypt(mpw,'key') from lmsmember where mid =?";
		//id ���� �� ����Ʈ ���� ó���� ���� ����� ������
		

	//	System.out.println("mid"+":"+mid+"mpw"+":"+mpw);
	//	System.out.println(sql);
		
		LoginDto bean = new LoginDto();
		ArrayList<LoginDto> LoginList = new  ArrayList<LoginDto>();
		
		boolean loginResult=false;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
		//	pstmt.setString(2, mpw);
			
			rs=pstmt.executeQuery();
			
			System.out.println(mid+"�α��� â���� �Էµ� ����"+mpw);
			
			
			if(rs.next()){ //id�� ���� ���
				if(rs.getString(1).equals(mpw)){ //����� ��Ī�Ѵ�
					System.out.println("pw ���� ");
					loginResult=true;			
					bean.setMid(mid); 
					bean.setloginResult(loginResult);
					
					LoginList.add(bean);	
					
				}else{
					
					System.out.println("pw Ʋ��");
					loginResult=false;			
					bean.setMid(""); 
					bean.setloginResult(loginResult);
					
					LoginList.add(bean);
				}
			}else{ //id �� ���� ���
				System.out.println("id ����");
				loginResult=false;			
				bean.setMid(""); 
				bean.setloginResult(loginResult);
				
				LoginList.add(bean);
			}

			return LoginList;
			
		} catch (SQLException e) {
			e.printStackTrace();
			
			bean.setMid(""); 
			bean.setloginResult(false); //false 
			LoginList.add(bean);
			
			return LoginList;
			
		}finally{
			destroy();
			
			System.out.println("dao result"+loginResult);
		}
		
	}
}