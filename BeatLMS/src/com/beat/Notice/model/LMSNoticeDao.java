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
	public void insertNotice(int lmsbcode, String noticeWriter, String noticeTitle, String noticeCont, int mnum) {
		String sql="insert into "
				+ "lmsBbsAll(lmsbcode, lmsbcode, lmsbauthor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent, lmsmember.mnum)"
				+ " values(lms_bbs_sq.nextval, ?, ?, sysdate, ?, ?, ?)";
		
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
			pstmt.setInt(5, mnum);
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
	
	public ArrayList<LMSNoticeDto> bbsListAll(int lmsbcode){
		String sql="select lmsblog, lmsbcode, lmsbauthor, lmsbdate, lmsbtitle, "
				+ "lmsbcontent, lmsmember.mnum from lmsBbsAll, lmsmember";
		ArrayList<LMSNoticeDto> list=new ArrayList<LMSNoticeDto>();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println(sql);
			
			while(rs.next()){
				LMSNoticeDto bean=new LMSNoticeDto();
				bean.setLmsblog(rs.getInt("lmsblog"));//로그 
				bean.setLmsbcode(rs.getInt("lmsbcode"));//게시판 종류코드
				bean.setLmsbauthor(rs.getString("lmsbauthor"));//게시판 작성자
				bean.setLmsbdate(rs.getDate("lmsbdate"));//작성일
				bean.setLmstitle(rs.getString("lmsbtitle"));//제목
				bean.setLmsbcontent(rs.getString("lmsbcontent"));//내용
				bean.setLmsnum(rs.getInt("mnum"));//회원번호
				
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
