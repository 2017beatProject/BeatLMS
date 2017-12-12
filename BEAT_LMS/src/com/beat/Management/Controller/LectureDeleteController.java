package com.beat.Management.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.LectureDeleteDao;

@WebServlet(value="/oneLecDelete.lms")
public class LectureDeleteController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
	
		String lecname =req.getParameter("lecturename");
		int lecseri = Integer.parseInt(req.getParameter("lecseri"));
	
		System.out.println("lecname"+lecname);
		System.out.println("lecseri"+lecseri);
		
		LectureDeleteDao dao = new LectureDeleteDao();
		int delResult = dao.delLec(lecseri);
		
		System.out.println("result"+delResult);
		
		String url;
		
		if(delResult>0){//성공하면
			url="adminLecture.lms";
			System.out.println("강의 삭제 성공");
			
		}else{
			url="adminLecture.lms";
			System.out.println("강의 삭제 실패");	
			
		}
		
		
		resp.sendRedirect(url);
		
	}
	
}
