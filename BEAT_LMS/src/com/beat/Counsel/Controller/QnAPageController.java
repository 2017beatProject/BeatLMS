package com.beat.Counsel.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beat.Counsel.Model.QnaDao;
import com.beat.Counsel.Model.QnaDto;

@WebServlet("/qna.lms")
public class QnAPageController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setAttribute("page","1");
		
		req.getRequestDispatcher("/QnaTotal.lms").forward(req, resp);
		

	}

}
