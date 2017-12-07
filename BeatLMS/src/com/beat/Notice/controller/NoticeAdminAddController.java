package com.beat.Notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Notice.model.LMSNoticeDao;

@WebServlet("/notice_admin_add.lms")
public class NoticeAdminAddController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 학사공지 - 글쓰기 버튼 페이지 이동
		req.getRequestDispatcher("/notice/admin_notice_add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int lmsbcode = 9002;
		System.out.println(lmsbcode);
		
		String noticeWriter = req.getParameter("noticeWriter");
		System.out.println(noticeWriter);
		
		String noticeTitle = req.getParameter("noticeTitle");
		System.out.println(noticeTitle);
		
		String noticeCont = req.getParameter("noticeCont");
		System.out.println(noticeCont);
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		System.out.println(mnum);
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		lmsNoticeDao.insertNotice(lmsbcode, noticeWriter, noticeTitle, noticeCont, mnum);
		
		// 공지 올리기 - 올리면 학사공지 페이지로 이동
		resp.sendRedirect("notice_admin.lms");
	}
	

}
