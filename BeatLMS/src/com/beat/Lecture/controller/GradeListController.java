package com.beat.Lecture.controller;

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
	
	// ��� �л� ��� ��� (���� ���� ���� ����Ʈ)
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		GradeListDao gradeListDao = new GradeListDao();
		ArrayList<StudentGradeDto> gradeList = gradeListDao.gradeListAll();
		
		req.setAttribute("listAll", gradeList);
		
		req.getRequestDispatcher("/lecture/testgrade.jsp").forward(req, resp);
		
	}
	
}
