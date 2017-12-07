package com.beat.Notice.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.beat.util.LMSDao;

public class LMSNoticeDao extends LMSDao{
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	LMSNoticeDao(){
		this.conn=super.conn;
	}
	
	
	//�Խ��� �Է�
	public void insertNotice(int lmsbcode, String noticeWriter, String noticeTitle, String noticeCont, int mnum ){
		String sql="insert into "
				+ "lmsBbsAll(lmsbcode, lmsbcode, lmsbautor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent, mnum)"
				+ " values(lms_bbs_sq.nextval, ?, ?, sysdate, ?, ?, ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, lmsbcode);
			// �Խ��� ������ ���� �ڵ� 1- �Ϲݰ������� 2- �л�������� 3- ���ǰԽ���
			// 4- ���Խ���
			pstmt.setString(2,noticeWriter);
			// �۾��� ������ ���̽� �̸��� lmsbautor
			pstmt.setString(3, noticeTitle);
			// ����
			pstmt.setString(4, noticeCont);
			//����
			pstmt.setInt(5, mnum);
			// �۾��� �̸��� �ĺ��ϴ� mnum // ���� mnum mname�� �����ͺ��̽��� �Է��ϴ� ������ ���� ���ϱ� ����.
			//mnum�� �����ϱ� ���� �ϱ� ����.
			pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		
		
	}
	
	public ArrayList<LMSNoticeDto> bbsListAll(int lmsbcode){
		String sql="select lmsblog, lmsbcode, lmsbautor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent, mnum from lmsBbsAll";
		ArrayList<LMSNoticeDto> list=new ArrayList<LMSNoticeDto>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				LMSNoticeDto bean=new LMSNoticeDto();
				bean.setLmsblog(rs.getInt("lmsblog"));//�α� 
				bean.setLmsbcode(rs.getInt("lmsbcode"));//�Խ��� �����ڵ�
				bean.setLmsbauthor(rs.getString("lmsbautor"));//�Խ��� �ۼ���
				bean.setLmsbdate(rs.getDate("lmsbdate"));//�ۼ���
				bean.setLmstitle(rs.getString("lmstitle"));//����
				bean.setLmsbcontent(rs.getString("lmscontent"));//����
				bean.setLmsnum(rs.getInt("mnum"));//ȸ����ȣ
				
				list.add(bean);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
			destroy();
		}
		return list;
	}
	
	
}
