package com.beat.Lecture.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mylecture.lms")
public class LectureMyPageController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// lecture - 수강강의(듣는 강의가 있을 때) 페이지 이동
		
		req.getRequestDispatcher("/lecture/mylecture.jsp").forward(req, resp);
	}

}
