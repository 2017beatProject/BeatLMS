package com.beat.Member.model;

import java.sql.Connection;
import java.sql.Date;
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
			if(conn==null || conn.isClosed()){//�̱����� ���ؼ� conn�� ���� ��쿡�� ������.
			InitialContext initCont = new InitialContext();
			DataSource ds = (DataSource) initCont.lookup("java:/comp/env/jdbc/oracle");
			conn = ds.getConnection();
			}
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
		public void OneMember(int mnum){
			String sql="";
			
		}
	
	
		public List<AccountantDto> memberList(){
			String sql="select mnum, snum,mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate from lmsMember";
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
					accbean.setJoindate(rs.getDate("joindate"));	
					list.add(accbean);					
				}				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
			destroy();
			}
			return list;
		}
		
		private void destroy(){ // �������� �޼ҵ�			
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}			
		}
	
		public void memberJoin(int snum, String mid, String mpw,String mname, Date mbirth, int mzen, int mphone, String mmail, String maddress, int maddnum){
			//ȸ�����Խ� ���� ����- ȸ��������ȣ(������), �źнĺ�(�л�/����), ���̵�, ��й�ȣ, �̸�, �������, ����, �޴���ȭ��ȣ
			//�̸����ּ�, ������ �ּ�, �����ȣ (�÷� ������ 9��)
			String sql="insert into lmsMember values(membernum_seq, ?, ?, ?, ? ,? ,? ,? ,?,sysdate)";
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, snum);				
				pstmt.setString(2,mname);
				pstmt.setDate(3,mbirth);
				pstmt.setInt(4, mzen);
				pstmt.setInt(5, mphone);
				pstmt.setString(6,mmail);
				pstmt.setString(7, maddress);
				pstmt.setInt(8, maddnum);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				destroy();
			}
			
			
			
		} 
		
		public void memberLogin(String id, String pw){
			
			String sql="select pw ";
			
			
		}
	
	

}
