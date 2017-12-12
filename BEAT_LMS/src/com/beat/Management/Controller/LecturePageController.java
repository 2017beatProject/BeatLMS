package com.beat.Management.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.LecturePageDao;
import com.beat.Management.model.LecturePageDto;

@WebServlet("/adminLecture.lms")
public class LecturePageController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		LecturePageDao dao = new LecturePageDao();
		ArrayList<LecturePageDto> list = dao.getLecList();
		
		req.setAttribute("leclist", list);
		
		req.getRequestDispatcher("/Adm_lectureAdd/lecture.jsp").forward(req, resp);
	}
}
