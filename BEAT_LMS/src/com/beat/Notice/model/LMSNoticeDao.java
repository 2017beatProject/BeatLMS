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
	
	
	//게시판 입력
	public void insertNotice(int lmsbcode, String noticeWriter, String noticeTitle, String noticeCont) {
		String sql="insert into "
				+ "lmsBbsAll(lmsblog, lmsbcode, lmsbauthor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent)"
				+ " values(lms_bbs_sq.nextval, ?, ?, sysdate, ?, ?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, lmsbcode);
			// 게시판 종류에 따른 코드 1- 일반공지사항 2- 학사공지사항 3- 강의게시판
			// 4- 상담게시판
			pstmt.setString(2,noticeWriter);
			// 글쓴이 데이터 베이스 이름은 lmsbautor
			pstmt.setString(3, noticeTitle);
			// 제목
			pstmt.setString(4, noticeCont);
			//내용
//			pstmt.setInt(5, mnum);
			// 글쓴이 이름을 식별하는 mnum // 굳이 mnum mname을 데이터베이스에 입력하는 이유는 보기 편하기 위함.
			//mnum은 구별하기 쉽게 하기 위함.
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
			System.out.println("값 입력");
			
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
				bean.setLmsblog(rs.getInt("lmsblog"));//로그 
				bean.setLmsbcode(rs.getInt("lmsbcode"));//게시판 종류코드
				bean.setLmsbauthor(rs.getString("lmsbauthor"));//게시판 작성자
				bean.setLmsbdate(rs.getDate("lmsbdate"));//작성일
				bean.setLmsbtitle(rs.getString("lmsbtitle"));//제목
				bean.setLmsbcontent(rs.getString("lmsbcontent"));//내용
//				bean.setLmsnum(rs.getInt("mnum"));//회원번호
				
				list.add(bean);
			}
			System.out.println("목록 출력");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{			
			destroy();
		}
		return list;
	}
	
	
}
