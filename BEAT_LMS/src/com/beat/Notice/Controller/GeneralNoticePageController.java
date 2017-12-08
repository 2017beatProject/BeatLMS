package com.beat.Notice.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/generalNotice.lms")
public class GeneralNoticePageController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.getRequestDispatcher("/notice/notice_general.jsp").forward(req, resp);
	}
	
}
