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
		// ȸ�� ������ �� ����Ŭ�� ����
		// �ֿ� �޼ҵ�� ȸ������, ȸ������ ����, ȸ�� Ż��(����), ȸ������ ��ü����, ȸ������ ���� ���� ���̴�.		
		// singleton ������� �ѹ��� �����ϵ��� �Ѵ�. -> conn�� null�̳� close �϶��� ����
		// ��Ĺ���� ����Ŭ ���������� initialContext�� �޾ƿ�

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
