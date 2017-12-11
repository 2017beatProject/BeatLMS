package com.beat.Management.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.LectureEditUpdateDao;

@WebServlet(value="/oneLecEditUpdate.lms")
public class LectureEditUpdateController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String lecname =req.getParameter("lecturename"); //지금은 serinum 받아옴
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
		
		String url;
		
		LectureEditUpdateDao dao = new LectureEditUpdateDao();
		int updateResult = dao.editLec(lecname, lecroom, lecteacher, lecstucnt, lecstart, lecend, leccontent);
		
		
		if(updateResult>0){
			url="adminLecture.lms";
			System.out.println("강의 수정 성공");
			
		}else{
			url="adminLecture.lms";
			System.out.println("강의 수정 실패");	
			
		}
		
		resp.sendRedirect(url);
		
		
	}

}
