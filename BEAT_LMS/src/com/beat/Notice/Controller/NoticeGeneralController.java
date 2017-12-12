package com.beat.Notice.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Notice.model.LMSNoticeDao;
import com.beat.Notice.model.LMSNoticeDto;

@WebServlet("/notice_general.lms")
public class NoticeGeneralController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("컨트롤러 왔다네");
		int lmsbcode = 9001;
		System.out.println(lmsbcode);
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		
		ArrayList<LMSNoticeDto> noticeGenList = lmsNoticeDao.bbsListAll(lmsbcode);
		req.setAttribute("noticeGenList", noticeGenList);
		
		// notice - 일반공지 페이지 이동
		req.getRequestDispatcher("/notice/notice_general.jsp").forward(req, resp);
	}

}
