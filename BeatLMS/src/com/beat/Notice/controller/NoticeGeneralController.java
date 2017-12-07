package com.beat.Notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/notice_general.lms")
public class NoticeGeneralController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// notice - 일반공지 페이지 이동
		req.getRequestDispatcher("/notice/notice_general.jsp").forward(req, resp);
	}

}
