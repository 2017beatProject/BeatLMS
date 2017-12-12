package com.beat.Notice.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Notice.model.LMSNoticeDao;
import com.beat.Notice.model.LMSNoticeDto;

@WebServlet("/notice_admin_edit.lms")
public class NoticeAdminEditController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("수정 버튼으로 get방식 이동");
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		
		int lmsblog = Integer.parseInt(req.getParameter("lmsblog").trim());
		System.out.println(lmsblog);
		
		LMSNoticeDto bean = lmsNoticeDao.selectOne(lmsblog);
		req.setAttribute("noticeAdminEdit", bean);
		
		// 학사공지 - row 클릭 - 수정 버튼 페이지 이동
		req.getRequestDispatcher("/notice/admin_notice_edit.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("포스트 왔니");
		
		req.setCharacterEncoding("UTF-8");
		
		String lmsbtitle = req.getParameter("lmsbtitle");
		System.out.println(lmsbtitle);
		
		String lmsbcontent = req.getParameter("lmsbcontent");
		System.out.println(lmsbcontent);
		
		int lmsblog = Integer.parseInt(req.getParameter("lmsblog").trim());
		System.out.println(lmsblog);

		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		int edit = lmsNoticeDao.editOne(lmsbtitle, lmsbcontent, lmsblog);
		System.out.println("리턴값:"+edit);
		
		String url = "edit";

		if(edit>0) {
			url = "detail";
			System.out.println("수정 완료");
		} 
		
		resp.sendRedirect("notice_admin_" + url + ".lms?lmsblog="+lmsblog);
		
		System.out.println(url);
		
	}
	


}
