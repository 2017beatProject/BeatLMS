package com.beat.Management.model;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;


public class MemberManagementDao extends LMSDao{ 
	

		private Connection conn;
		private PreparedStatement pstmt;
		private ResultSet rs;
		
		private int entireCnt;
		
		public MemberManagementDao(){
			conn=super.conn;
		}
			
		public int getEntireCnt(){
			return this.entireCnt;
		}
		
		
		public ArrayList<MemberManagementDto> getByMnumList(String keyword, int pageStart, int pageEnd){
			//mnum���� �˻�
			ArrayList<MemberManagementDto> list =new ArrayList<MemberManagementDto>();
			
			
			String sql = "SELECT * FROM (SELECT rownum as rn, MNUM, MID, MNAME, dept "
					+"FROM LMSMEMBER WHERE MNUM LIKE '%"+keyword+"%' ORDER BY MNUM DESC) WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			String sqlForEntireCnt = "select count(*) as cnt from lmsmember where MNUM like '%"+keyword+"%'";
			
			
			try {
				
				//�켱 ��ü ī��Ʈ ����
				pstmt = conn.prepareStatement(sqlForEntireCnt);
				rs=pstmt.executeQuery();
				
				if(rs.next()){
					entireCnt = rs.getInt("cnt");
					System.out.println("�� �� "+entireCnt);
				}
				
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
		
			
				//�׸��� ����
				pstmt = conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){ //������� ������
					
					MemberManagementDto bean = new MemberManagementDto();
				
							//1�� rownum
					bean.setMnum(rs.getInt(2));
					bean.setMid(rs.getString(3));
					bean.setMname(rs.getString(4));
					bean.setTeam(rs.getString(5)); 
						
					list.add(bean);	
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally{
				destroy();
				
			}
			
			return list;
		}
		
		
		public ArrayList<MemberManagementDto> getByMnameList(String keyword, int pageStart, int pageEnd){
			//mname�� �˻�
			ArrayList<MemberManagementDto> list =new ArrayList<MemberManagementDto>();
			
			String sql = "SELECT * FROM (SELECT rownum as rn, MNUM, MID, MNAME, dept "
					+"FROM LMSMEMBER WHERE MNAME LIKE '%"+keyword+"%' ORDER BY MNUM DESC) WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			String sqlForEntireCnt = "select count(*) as cnt from lmsmember where mNAME like '%"+keyword+"%'";
			
			
			try {
				
				//�켱 ��ü ī��Ʈ ����
				pstmt = conn.prepareStatement(sqlForEntireCnt);
				rs=pstmt.executeQuery();
				
				if(rs.next()){
					entireCnt = rs.getInt("cnt");
					System.out.println("�� �� "+entireCnt);
				}
				
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
		
			
				//�׸��� ����
				pstmt = conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){ //������� ������
					
					MemberManagementDto bean = new MemberManagementDto();
				
							//1�� rownum
					bean.setMnum(rs.getInt(2));
					bean.setMid(rs.getString(3));
					bean.setMname(rs.getString(4));
					bean.setTeam(rs.getString(5)); 
						
					list.add(bean);	
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally{
				destroy();
				
			}
			
			
			
			return list;
		}
		
		
		public ArrayList<MemberManagementDto> getByDeptList(String keyword, int pageStart, int pageEnd){
			//dept�� �˻�

			
			ArrayList<MemberManagementDto> list =new ArrayList<MemberManagementDto>();
			
			String sql = "SELECT * FROM (SELECT rownum as rn, MNUM, MID, MNAME, dept "
					+"FROM LMSMEMBER WHERE DEPT LIKE '%"+keyword+"%' ORDER BY MNUM DESC) WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			String sqlForEntireCnt = "select count(*) as cnt from lmsmember where DEPT like '%"+keyword+"%'";
			
			
			try {
				
				//�켱 ��ü ī��Ʈ ����
				pstmt = conn.prepareStatement(sqlForEntireCnt);
				rs=pstmt.executeQuery();
				
				if(rs.next()){
					entireCnt = rs.getInt("cnt");
					System.out.println("�� �� "+entireCnt);
				}
				
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
		
			
				//�׸��� ����
				pstmt = conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){ //������� ������
					
					MemberManagementDto bean = new MemberManagementDto();
				
							//1�� rownum
					bean.setMnum(rs.getInt(2));
					bean.setMid(rs.getString(3));
					bean.setMname(rs.getString(4));
					bean.setTeam(rs.getString(5)); 
						
					list.add(bean);	
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally{
				destroy();
				
			}
			
			
			
			return list;
		}
										
		
		
		public ArrayList<MemberManagementDto> getAllList(String keyword, int pageStart, int pageEnd) {
			//�ϴ� MID�� �˻����� //ȭ�鿡�� MNUM�� �������� ���� 
			
			//String sql ="SELECT * FROM (select rownum as rn, MNUM, MID, MNAME, rightcode from "
			//	+"(SELECT * FROM LMSMEMBER WHERE MID LIKE '%"+keyword+"%' ORDER BY MNUM DESC)) "
			//	+"WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			ArrayList<MemberManagementDto> list =new ArrayList<MemberManagementDto>();
			
			String sql = "SELECT * FROM (SELECT rownum as rn, MNUM, MID, MNAME, dept "
					+"FROM LMSMEMBER WHERE MID LIKE '%"+keyword+"%' ORDER BY MNUM DESC) WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			String sqlForEntireCnt = "select count(*) as cnt from lmsmember where mid like '%"+keyword+"%'";
			
			
			try {
				
				//�켱 ��ü ī��Ʈ ����
				pstmt = conn.prepareStatement(sqlForEntireCnt);
				rs=pstmt.executeQuery();
				
				if(rs.next()){
					entireCnt = rs.getInt("cnt");
					System.out.println("�� �� "+entireCnt);
				}
				
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
		
			
				//�׸��� ����
				pstmt = conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){ //������� ������
					
					MemberManagementDto bean = new MemberManagementDto();
				
							//1�� rownum
					bean.setMnum(rs.getInt(2));
					bean.setMid(rs.getString(3));
					bean.setMname(rs.getString(4));
					bean.setTeam(rs.getString(5)); 
						
					list.add(bean);	
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
				
			}finally{
				destroy();
				
			}
			return list;
			
		}
}