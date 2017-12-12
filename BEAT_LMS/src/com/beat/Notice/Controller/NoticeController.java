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

@WebServlet("/notice.lms")
public class NoticeController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("��Ʈ�ѷ� �Դٳ�");
		int lmsbcode = 9002;
		System.out.println(lmsbcode);
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		
		ArrayList<LMSNoticeDto> noticeList = lmsNoticeDao.bbsListAll(lmsbcode);
		req.setAttribute("noticeList", noticeList);
		
		// notice - �л���� ������ �̵�
		req.getRequestDispatcher("/notice/notice.jsp").forward(req, resp);
	}

}
