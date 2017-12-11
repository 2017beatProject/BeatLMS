package com.beat.Notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Notice.model.LMSNoticeDao;
import com.beat.Notice.model.LMSNoticeDto;

@WebServlet("/notice_admin_gen_edit.lms")
public class NoticeAdminGenEditController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("���� ��ư���� get��� �̵�");
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		
		int lmsblog = Integer.parseInt(req.getParameter("lmsblog").trim());
		System.out.println(lmsblog);
		
		LMSNoticeDto bean = lmsNoticeDao.selectOne(lmsblog);
		req.setAttribute("noticeAdminGenEdit", bean);
		
		// �Ϲݰ��� - row Ŭ�� - ���� ��ư ������ �̵�
		req.getRequestDispatcher("/notice/admin_notice_general_edit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("����Ʈ �Դ�");
		
		req.setCharacterEncoding("UTF-8");
		
		String lmsbtitle = req.getParameter("lmsbtitle");
		System.out.println(lmsbtitle);
		
		String lmsbcontent = req.getParameter("lmsbcontent");
		System.out.println(lmsbcontent);
		
		int lmsblog = Integer.parseInt(req.getParameter("lmsblog").trim());
		System.out.println(lmsblog);

		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		int edit = lmsNoticeDao.editOne(lmsbtitle, lmsbcontent, lmsblog);
		System.out.println("���ϰ�:"+edit);
		
		String url = "edit";

		if(edit>0) {
			url = "detail";
			System.out.println("���� �Ϸ�");
		} 
		
		resp.sendRedirect("notice_admin_" + url + ".lms?lmsblog="+lmsblog);
		
		System.out.println(url);
		
	}

}
