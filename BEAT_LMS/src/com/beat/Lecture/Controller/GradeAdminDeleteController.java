package com.beat.Lecture.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Lecture.model.GradeAdminDao;

@WebServlet("/grade_delete.lms")
public class GradeAdminDeleteController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 목록 - 삭제 페이지 이동
		req.getRequestDispatcher("/lecture/testGradeAdminDelete.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		System.out.println("성적 삭제 할 학생번호:"+mnum);
		
		GradeAdminDao gradeAdminDao = new GradeAdminDao();
		gradeAdminDao.gradeDelete(mnum);
		
		// 삭제 후 목록 페이지 이동
		resp.sendRedirect("grade_admin.lms");
	}

}
