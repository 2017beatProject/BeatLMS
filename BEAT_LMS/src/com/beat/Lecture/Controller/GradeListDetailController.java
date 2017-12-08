package com.beat.Lecture.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Lecture.model.GradeListDao;
import com.beat.Lecture.model.StudentGradeDto;

@WebServlet("/grade_detail.lms")
public class GradeListDetailController extends HttpServlet {
	
	// 성적 확인 상세 페이지
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		
		GradeListDao gradeListDao = new GradeListDao();
		StudentGradeDto bean = gradeListDao.gradeSelectOne(mnum);
		
		req.setAttribute("gradeDetail", bean);
		
		req.getRequestDispatcher("/lecture/testGradeDetail.jsp").forward(req, resp);
		
	}

}
