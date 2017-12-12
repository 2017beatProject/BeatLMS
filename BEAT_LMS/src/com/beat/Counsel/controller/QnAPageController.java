package com.beat.Counsel.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Counsel.model.QnaDao;
import com.beat.Counsel.model.QnaDto;

@WebServlet("/qna.lms")
public class QnAPageController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		QnaDao dao =new  QnaDao();
		ArrayList<QnaDto> list= dao.qnalist();
		req.setAttribute("list", list);
	
		req.getRequestDispatcher("/contactus/Q&A.jsp").forward(req, resp);
		
	}
	
}
