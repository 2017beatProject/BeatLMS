package com.beat.Counsel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QnA_add.lms")
public class QnAaddPageController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// contact us - �������� - �۾��� ��ư ������ �̵�
		
		req.getRequestDispatcher("/contactus/Q&A_add.jsp").forward(req, resp);
		
	}

}
