package com.beat.Notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Notice.model.LMSNoticeDao;
import com.beat.Notice.model.LMSNoticeDto;

@WebServlet("/notice_general_detail.lms")
public class NoticeGeneralDetailController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		System.out.println("왔니");
		int lmsblog = Integer.parseInt(req.getParameter("lmsblog"));
		System.out.println(lmsblog);
		
		LMSNoticeDto bean = lmsNoticeDao.selectOne(lmsblog);
		
		req.setAttribute("noticeGenDetail", bean);
		
		// 일반공지 - row 클릭 - detail 페이지 이동
		req.getRequestDispatcher("/notice/notice_general_detail.jsp").forward(req, resp);
	}

}
