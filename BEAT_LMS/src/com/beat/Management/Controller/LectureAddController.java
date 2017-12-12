package com.beat.Management.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.LectureAddDao;


@WebServlet(value="/lectureadd.lms")

public class LectureAddController extends HttpServlet {
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	req.setCharacterEncoding("UTF-8");

	//System.out.println("get으로 들어오면 인덱스로 돌림");
	//req.getRequestDispatcher("/index/index.jsp").forward(req, resp);
	resp.sendRedirect("index.lms");
}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");


		String lecname =req.getParameter("lecturename");
		int lecroom =Integer.parseInt(req.getParameter("lectureroom"));
		int lecteacher = Integer.parseInt(req.getParameter("lectureteacher"));
		int lecstucnt = Integer.parseInt(req.getParameter("lecturelimit"));
		Date lecstart =java.sql.Date.valueOf(req.getParameter("lecturestartdate"));
		Date lecend =java.sql.Date.valueOf(req.getParameter("lectureenddate"));
		String leccontent=req.getParameter("lecturecontent");
		
//		System.out.println("강의명:"+lecname);
//		System.out.println("강의실:"+lecroom);
//		System.out.println("강사:"+lecteacher);
//		System.out.println("정원:"+lecstucnt);
//		System.out.println("시작일:"+lecstart);
//		System.out.println("종료일:"+lecend);
//		System.out.println("강의내용:"+leccontent);
		
		
		LectureAddDao dao = new LectureAddDao();
		dao.insertLec(lecname, lecroom, lecteacher, lecstucnt, lecstart, lecend, leccontent);
		
		resp.sendRedirect("adminLecture.lms");
		
	}
}
