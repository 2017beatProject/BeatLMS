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
	// ������ ���� �Է� ������
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// ��� - �Է� �������� �̵�
		req.getRequestDispatcher("/lecture/testGradeAdminInsert.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// �Է°� ���� �� ��� �������� �̵�
		
		req.setCharacterEncoding("UTF-8");
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		System.out.println("�л���ȣ:"+mnum);
		
		int lectSeriNum = Integer.parseInt(req.getParameter("lectSeriNum"));
		System.out.println("���ǽ�:"+lectSeriNum);
		
		int javaPoint = Integer.parseInt(req.getParameter("javaPoint"));
		System.out.println("�ڹ�:"+javaPoint);
		
		int webPoint = Integer.parseInt(req.getParameter("webPoint"));
		System.out.println("��:"+webPoint);
		
		int DBPoint = Integer.parseInt(req.getParameter("DBPoint"));
		System.out.println("���:"+DBPoint);
		
		long pointAvr = Long.parseLong(req.getParameter("pointAvr"));
		System.out.println("���:"+pointAvr);
		
		int pointSum = Integer.parseInt(req.getParameter("pointSum"));
		System.out.println("�հ�:"+pointSum);
		
		GradeAdminDao gradeAdminDao = new GradeAdminDao();
		gradeAdminDao.gradeInsert(mnum, lectSeriNum, javaPoint, webPoint, DBPoint, pointAvr, pointSum);
		
		resp.sendRedirect("/grade_admin.lms");
	}

}
