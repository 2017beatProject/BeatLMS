package com.beat.Lecture.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Lecture.model.GradeListDao;
import com.beat.Lecture.model.StudentGradeDto;

@WebServlet("/grade_view.lms")
public class GradeListController extends HttpServlet {
	
	// 모든 학생 목록 출력 (성적 보기 위한 리스트)
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		GradeListDao gradeListDao = new GradeListDao();
		ArrayList<StudentGradeDto> gradeList = gradeListDao.gradeListAll();
		
		req.setAttribute("listAll", gradeList);
		
		req.getRequestDispatcher("/lecture/testgrade.jsp").forward(req, resp);
		
	}
	
}
