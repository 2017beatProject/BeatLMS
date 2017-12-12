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
	
	public LMSNoticeDao(){
		this.conn=super.conn;
	}
	
	
	//�Խ��� �Է�
	public void insertNotice(int lmsbcode, String noticeWriter, String noticeTitle, String noticeCont) {
		String sql="insert into "
				+ "lmsBbsAll(lmsblog, lmsbcode, lmsbauthor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent)"
				+ " values(lms_bbs_sq.nextval, ?, ?, sysdate, ?, ?)";
		
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
//			pstmt.setInt(5, mnum);
			// �۾��� �̸��� �ĺ��ϴ� mnum // ���� mnum mname�� �����ͺ��̽��� �Է��ϴ� ������ ���� ���ϱ� ����.
			//mnum�� �����ϱ� ���� �ϱ� ����.
			pstmt.executeUpdate();	
			
			System.out.println(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			destroy();
		}
		
		
	}
	
	public LMSNoticeDto selectOne(int lmsblog) {
		
		String sql = "select * from lmsbbsAll where lmsblog=?";
		
		LMSNoticeDto bean = new LMSNoticeDto();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, lmsblog);
			rs = pstmt.executeQuery();
			System.out.println(sql);
			
			if(rs.next()) {
				bean.setLmsblog(rs.getInt("lmsblog"));
				bean.setLmsbcode(rs.getInt("lmsbcode"));
				bean.setLmsbauthor(rs.getString("lmsbauthor"));
				bean.setLmsbdate(rs.getDate("lmsbdate"));
				bean.setLmsbtitle(rs.getString("lmsbtitle"));
				bean.setLmsbcontent(rs.getString("lmsbcontent"));
			}
			System.out.println("�� �Է�");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			destroy();
		}
		
		return bean;
	}
	
	
	public int editOne(String lmsbtitle, String lmsbcontent, int lmsblog) {
	
		String sql = "update lmsbbsall set lmsbtitle=?, lmsbcontent=? where lmsblog=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			System.out.println(sql);
			pstmt.setString(1, lmsbtitle);
			pstmt.setString(2, lmsbcontent);
			pstmt.setInt(3, lmsblog);
			return pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		} finally {
			destroy();
		}
		
	}
	
	
	public ArrayList<LMSNoticeDto> bbsListAll(int lmsbcode){

		String sql="select lmsblog, lmsbcode, lmsbauthor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent from lmsBbsAll where lmsbcode=? order by lmsblog desc";
		
		ArrayList<LMSNoticeDto> list=new ArrayList<LMSNoticeDto>();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, lmsbcode);
			rs=pstmt.executeQuery();
			
			System.out.println(sql);
			
			while(rs.next()){
				LMSNoticeDto bean=new LMSNoticeDto();
				bean.setLmsblog(rs.getInt("lmsblog"));//�α� 
				bean.setLmsbcode(rs.getInt("lmsbcode"));//�Խ��� �����ڵ�
				bean.setLmsbauthor(rs.getString("lmsbauthor"));//�Խ��� �ۼ���
				bean.setLmsbdate(rs.getDate("lmsbdate"));//�ۼ���
				bean.setLmsbtitle(rs.getString("lmsbtitle"));//����
				bean.setLmsbcontent(rs.getString("lmsbcontent"));//����
//				bean.setLmsnum(rs.getInt("mnum"));//ȸ����ȣ
				
				list.add(bean);
			}
			System.out.println("��� ���");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
			destroy();
		}
		return list;
	}
	
	
}
