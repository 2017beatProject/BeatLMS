package com.beat.Notice.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beat.Notice.model.LMSNoticeDao;

@WebServlet("/notice_admin_gen_add.lms")
public class NoticeAdminGenAddController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		String mid=(String)session.getAttribute("mid");		
		req.setAttribute("mid", mid);
		
		// 일반공지 - 글쓰기 버튼 페이지 이동
		req.getRequestDispatcher("/notice/admin_notice_general_add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int lmsbcode = 9001;
		System.out.println(lmsbcode);
		
		String noticeWriter = req.getParameter("noticeWriter");
		System.out.println(noticeWriter);
		
		String noticeTitle = req.getParameter("noticeTitle");
		System.out.println(noticeTitle);
		
		String noticeCont = req.getParameter("noticeCont");
		System.out.println(noticeCont);
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		lmsNoticeDao.insertNotice(lmsbcode, noticeWriter, noticeTitle, noticeCont);
		
		// 공지 올리기 - 올리면 일반공지 페이지로 이동
		resp.sendRedirect("notice_admin_gen.lms");
	}

}
