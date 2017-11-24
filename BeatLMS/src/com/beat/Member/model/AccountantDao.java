package com.beat.Member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class AccountantDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public AccountantDao() {
		// 회원 가입할 때 오라클에 연결
		// 주요 메소드는 회원가입, 회원정보 수정, 회원 탈퇴(삭제), 회원정보 전체열람, 회원정보 개별 열람 등이다.		
		// singleton 방식으로 한번만 접근하도록 한다. -> conn이 null이나 close 일때만 생성
		// 톰캣에서 오라클 접속정보를 initialContext로 받아옴

		try {
			InitialContext initCont = new InitialContext();
			DataSource ds = (DataSource) initCont.lookup("java:/comp/env/jdbc/oracle");
			conn = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		public List<AccountantDto> memberList(){
			String sql="select mnum, snum, mname, mbirth, mzen, mphone, mmail, maddress, maddnum from lmsMember";
			List<AccountantDto> list=new ArrayList<AccountantDto>();
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()){
					AccountantDto accbean=new AccountantDto();
					accbean.setMnum(rs.getInt("mnum"));
					accbean.setSnum(rs.getInt("snum"));
					accbean.setMname(rs.getString("mname"));
					accbean.setMbirth(rs.getDate("mbirth"));
					accbean.setMzen(rs.getInt("mzen"));
					accbean.setMphone(rs.getInt("mphone"));
					accbean.setMmail(rs.getString("mmail"));
					accbean.setMaddress(rs.getString("maddress"));
					accbean.setMaddnum(rs.getInt("maddnum"));					
					list.add(accbean);
					
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
			return list;
			}
		}
	
	
		public void memberJoin(){
			String sql=null;
			
			
			
		} 
		
		public void stuJoin(){
			
		}
	
	

}
