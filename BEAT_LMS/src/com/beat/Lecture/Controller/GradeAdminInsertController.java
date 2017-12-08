package com.beat.Lecture.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Lecture.model.GradeAdminDao;

@WebServlet("/grade_insert.lms")
public class GradeAdminInsertController extends HttpServlet {
	// 관리자 성적 입력 페이지
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 목록 - 입력 페이지로 이동
		req.getRequestDispatcher("/lecture/testGradeAdminInsert.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// 입력값 전달 후 목록 페이지로 이동
		
		req.setCharacterEncoding("UTF-8");
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		System.out.println("학생번호:"+mnum);
		
		int lectSeriNum = Integer.parseInt(req.getParameter("lectSeriNum"));
		System.out.println("강의실:"+lectSeriNum);
		
		int javaPoint = Integer.parseInt(req.getParameter("javaPoint"));
		System.out.println("자바:"+javaPoint);
		
		int webPoint = Integer.parseInt(req.getParameter("webPoint"));
		System.out.println("웹:"+webPoint);
		
		int DBPoint = Integer.parseInt(req.getParameter("DBPoint"));
		System.out.println("디비:"+DBPoint);
		
		long pointAvr = Long.parseLong(req.getParameter("pointAvr"));
		System.out.println("평균:"+pointAvr);
		
		int pointSum = Integer.parseInt(req.getParameter("pointSum"));
		System.out.println("합계:"+pointSum);
		
		GradeAdminDao gradeAdminDao = new GradeAdminDao();
		gradeAdminDao.gradeInsert(mnum, lectSeriNum, javaPoint, webPoint, DBPoint, pointAvr, pointSum);
		
		resp.sendRedirect("grade_admin.lms");
	}

}
