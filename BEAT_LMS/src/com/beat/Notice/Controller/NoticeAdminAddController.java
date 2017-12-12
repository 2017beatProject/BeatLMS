package com.beat.Notice.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beat.Notice.model.LMSNoticeDao;

@WebServlet("/notice_admin_add.lms")
public class NoticeAdminAddController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		String mid=(String)session.getAttribute("mid");		
		req.setAttribute("mid", mid);
		
		// �л���� - �۾��� ��ư ������ �̵�
		req.getRequestDispatcher("/notice/admin_notice_add.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int lmsbcode = 9002;
		System.out.println(lmsbcode);
		
		String noticeWriter = req.getParameter("noticeWriter");
		System.out.println(noticeWriter);
		
		String noticeTitle = req.getParameter("noticeTitle");
		System.out.println(noticeTitle);
		
		String noticeCont = req.getParameter("noticeCont");
		System.out.println(noticeCont);
		
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		lmsNoticeDao.insertNotice(lmsbcode, noticeWriter, noticeTitle, noticeCont);
		
		// ���� �ø��� - �ø��� �л���� �������� �̵�
		resp.sendRedirect("notice_admin.lms");
	}
	

}
