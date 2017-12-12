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

@WebServlet("/notice_admin.lms")
public class NoticeAdminController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("��Ʈ�ѷ� �Դٳ�");
		int lmsbcode = 9002;
		System.out.println(lmsbcode);
		
		LMSNoticeDao lmsNoticeDao = new LMSNoticeDao();
		
		ArrayList<LMSNoticeDto> noticeAdminList = lmsNoticeDao.bbsListAll(lmsbcode);
		req.setAttribute("noticeAdminList", noticeAdminList);
		
		// notice - �л���� ������ �̵�
		req.getRequestDispatcher("/notice/admin_notice.jsp").forward(req, resp);
	}

}
