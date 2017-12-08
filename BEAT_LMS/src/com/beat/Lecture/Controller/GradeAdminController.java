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

@WebServlet("/grade_admin.lms")
public class GradeAdminController extends HttpServlet {
	
	// 包府磊 己利 格废 其捞瘤
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		GradeListDao gradeListDao = new GradeListDao();
		ArrayList<StudentGradeDto> gradeListAdmin = gradeListDao.gradeListAll();
		
		req.setAttribute("listAllAdmin", gradeListAdmin);
		
		req.getRequestDispatcher("/lecture/testGradeAdmin.jsp").forward(req, resp);
		
	}
	

}
