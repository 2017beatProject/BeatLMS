package com.beat.Management.model;

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
		
		public ArrayList<MemberManagementDto> getAllList(String keyword, int pageStart, int pageEnd) {
			//일단 MID로 검색가정 //화면에는 MNUM을 내림차순 정렬 
			
			//String sql ="SELECT * FROM (select rownum as rn, MNUM, MID, MNAME, rightcode from "
			//	+"(SELECT * FROM LMSMEMBER WHERE MID LIKE '%"+keyword+"%' ORDER BY MNUM DESC)) "
			//	+"WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			ArrayList<MemberManagementDto> list =new ArrayList<MemberManagementDto>();
			
			String sql = "SELECT * FROM (SELECT rownum as rn, MNUM, MID, MNAME, rightcode "
					+"FROM LMSMEMBER WHERE MID LIKE '%"+keyword+"%' ORDER BY MNUM DESC) WHERE RN BETWEEN "+pageStart+" and "+pageEnd;
			
			String sqlForEntireCnt = "select count(*) as cnt from lmsmember where mid like '%"+keyword+"%'";
			
			
			try {
				
				//우선 전체 카운트 먼저
				pstmt = conn.prepareStatement(sqlForEntireCnt);
				rs=pstmt.executeQuery();
				
				if(rs.next()){
					entireCnt = rs.getInt("cnt");
					System.out.println("총 수 "+entireCnt);
				}
				
				if(rs!=null) rs.close();
				if(pstmt!=null)pstmt.close();
		
			
				//그리고 내용
				pstmt = conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				while(rs.next()){ //결과값이 나오면
					
					MemberManagementDto bean = new MemberManagementDto();
				
							//1은 rownum
					bean.setMnum(rs.getInt(2));
					bean.setMid(rs.getString(3));
					bean.setMname(rs.getString(4));
					bean.setTeam(rs.getInt(5)); 
						
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
