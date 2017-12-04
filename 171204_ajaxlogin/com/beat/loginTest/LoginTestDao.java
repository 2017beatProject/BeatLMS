package com.beat.loginTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.searchTest.SearchTestDto;

public class LoginTestDao {


	 
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public LoginTestDao() {
		
			try {
				//Here is for Connect.... maybe the Controller charge will undertake~~~
				String dburl = "jdbc:oracle:thin:@localhost:1521:xe";
				String dbid="scott";
				String dbpw="tiger";
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(dburl, dbid, dbpw);
				
			}catch(Exception e ) {
				e.printStackTrace();
			}
	}
	
	
	
	public ArrayList<LoginTestDto> testLogin(String mid, String mpw){
		
		//String sql = "select count(*) as cnt from lmsMember "
		String sql = "select mid from lmsMember "
			+ "where mid like ? and mpw like ?";
			//+ "and CryptString.decrypt(mpw,'key') like ?";// 비번 암호화/복호화(DB 내부에서 값비교)
		
			//이 부분 공용 서버에 맞춰서 수정필요합니다
			//sql 에서 mid/mpw가 합치하는 mid만 호출 
			//불린값이 아닌 json으로 id 및 결과만 보냅니다
		
		ArrayList<LoginTestDto> TestLoginList = new  ArrayList<LoginTestDto>();
		boolean loginResult=false;
		
		try {
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid); 
			pstmt.setString(2, mpw);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				LoginTestDto bean = new LoginTestDto();	
				loginResult=true;
				
				bean.setMid(rs.getString("mid")); 
				bean.setloginResult(loginResult);
				
				TestLoginList.add(bean);		
			}
			
			return TestLoginList;
				
				
		} catch (SQLException e) {
			e.printStackTrace(); 
			return TestLoginList;
			
		}finally{
			//여기 클로즈...
		}
			
			
		
	
	
	}
	
}
