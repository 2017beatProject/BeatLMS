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
		
	public ArrayList<LoginDto> memberLogin(String mid, String mpw, String snum) {
	//로그인할 때 쓰는 매소드
	//	String sql = "select count(*) as cnt from lmsmember "
	//			+ "where mid like '%' || ? || '%' "
	//			+ "and CryptString.decrypt(mpw,'key') like '%' || ? || '%'";// 비번 암호화/복호화(DB 내부에서 값비교)
	
		String sql = "select CryptString.decrypt(mpw,'key'), snum from lmsmember where mid =?";
		//id 없을 때 리스트 리턴 처리를 위해 비번값 꺼내옴
		

	//	System.out.println("mid"+":"+mid+"mpw"+":"+mpw);
	//	System.out.println(sql);
		
		int snumChk = Integer.parseInt(snum);
		
		LoginDto bean = new LoginDto();
		ArrayList<LoginDto> LoginList = new  ArrayList<LoginDto>();
		
		boolean loginResult=false;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs=pstmt.executeQuery();
			
			System.out.println(mid+"로그인 창에서 입력된 정보"+mpw);
			
			
			if(rs.next()){ //id가 있을 경우
				
				if(rs.getInt(2)==snumChk){ //우선 직원인지 일반인인지 먼저 처리한 다음
				
					if(rs.getString(1).equals(mpw)){ //비번을 매칭한다
						System.out.println("pw 맞음 ");
						loginResult=true;			
						bean.setMid(mid); 
						bean.setloginResult(loginResult);
						
						LoginList.add(bean);	
						
					}else{
						
						System.out.println("pw 틀림");
						loginResult=false;			
						bean.setMid(""); 
						bean.setloginResult(loginResult);
						
						LoginList.add(bean);
					}
					
				
				}else{
					
					System.out.println("권한이 맞지 않음");
					
					loginResult=false;			
					bean.setMid(""); 
					bean.setloginResult(loginResult);
					
					LoginList.add(bean);
					
					
				}
			}else{ //id 가 없을 경우
				System.out.println("id 없음");
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