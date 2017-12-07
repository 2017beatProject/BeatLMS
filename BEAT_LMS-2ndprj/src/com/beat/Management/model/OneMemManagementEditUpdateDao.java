package com.beat.Management.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.beat.util.LMSDao;

public class OneMemManagementEditUpdateDao extends LMSDao{

	private Connection conn;
	private PreparedStatement pstmt;

	public OneMemManagementEditUpdateDao() {
		conn=super.conn;
	}
	
	
	public void EditOne(){
		String sql = "UPDATE LMSMEMBER SET MNUM=?, SNUM=?, MID=?, MNAME=?, MBIRTH=?, MZEN=?, MPHONE=?, "
				+"MMAIL=?, MADDRESS=?, MADDNUM=?, JOINDATE=?, RIGHTCODE=? WHERE MNUM=?";
		//��� ���� ������Ʈ�ϰ�, ������ ������ �˻� ������ MNUM����
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(, x);
	
		
		while(rs.next()){ //������� ������
			
			MemberManagementDto bean = new MemberManagementDto();
		
					//1�� rownum
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
	
	

}
