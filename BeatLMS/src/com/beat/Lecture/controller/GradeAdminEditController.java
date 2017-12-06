package com.beat.Lecture.controller;

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
		
		// ��� - ���� ������ �̵�
		req.getRequestDispatcher("/lecture/testGradeAdminEdit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int mnum = Integer.parseInt(req.getParameter("mnum"));
		System.out.println("�л���ȣ:"+mnum);
		
		int javaPoint = Integer.parseInt(req.getParameter("javaPoint"));
		System.out.println("�ڹ� ���� ����:"+javaPoint);
		
		int webPoint = Integer.parseInt(req.getParameter("webPoint"));
		System.out.println("�� ���� ����:"+webPoint);
		
		int DBPoint = Integer.parseInt(req.getParameter("DBPoint"));
		System.out.println("��� ���� ����:"+DBPoint);

		
		GradeAdminDao gradeAdminDao = new GradeAdminDao();
		gradeAdminDao.gradeEdit(mnum, javaPoint, webPoint, DBPoint);
		
		// ���� ���� �� ��� �������� �̵�
		resp.sendRedirect("grade_admin.lms");
	}
}
