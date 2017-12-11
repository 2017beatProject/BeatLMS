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

@WebServlet(value="/lecDetail.lms")
public class LectureDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String lectserinum = req.getParameter("lecname");
		//강의명, 강의장, 강사, 정원, 시작, 종료, 내용 그대로 불러오기
		
		LecturePageDao dao = new LecturePageDao();
		ArrayList<LecturePageDto> list = dao.getOneLec(lectserinum);

		req.setAttribute("onelec", list);

		req.getRequestDispatcher("/Adm_lectureAdd/lecture_detail.jsp").forward(req, resp);
		
	}
	
}
