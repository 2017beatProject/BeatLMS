package com.beat.Lecture.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lecture_detail.lms")
public class LectureDetailController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// lecture - 강의 소개 - 수강신청 페이지 이동
		
		// 현재는 detail.jsp 한 페이지이므로
		// 수강신청 메뉴 또는 강의명 a 태그 누를 때 이동
		
		req.getRequestDispatcher("/lecture/detail.jsp").forward(req, resp);
	}

}
