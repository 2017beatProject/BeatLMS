package com.beat.Lecture.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Lecture.model.GradeAdminDao;

@WebServlet("/grade_edit.lms")
public class GradeAdminEditController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 목록 - 수정 페이지 이동
		req.getRequestDispatcher("/lecture/testGradeAdminEdit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		System.out.println("학생번호:"+mnum);
		
		int javaPoint = Integer.parseInt(req.getParameter("javaPoint"));
		System.out.println("자바 수정 점수:"+javaPoint);
		
		int webPoint = Integer.parseInt(req.getParameter("webPoint"));
		System.out.println("웹 수정 점수:"+webPoint);
		
		int DBPoint = Integer.parseInt(req.getParameter("DBPoint"));
		System.out.println("디비 수정 점수:"+DBPoint);

		
		GradeAdminDao gradeAdminDao = new GradeAdminDao();
		gradeAdminDao.gradeEdit(mnum, javaPoint, webPoint, DBPoint);
		
		// 성적 수정 후 목록 페이지로 이동
		resp.sendRedirect("grade_admin.lms");
	}
}
