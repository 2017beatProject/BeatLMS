package com.beat.Counsel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/counsel.lms")
public class CounselPageController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// contatct us - 상담신청 페이지 전환
		
		req.getRequestDispatcher("/contactus/counsel.jsp").forward(req, resp);
	}

}
