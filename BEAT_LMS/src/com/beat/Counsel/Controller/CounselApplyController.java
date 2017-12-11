package com.beat.Counsel.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Counsel.Model.CounselDao;

@WebServlet("/counsel_apply.lms")
public class CounselApplyController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String mid= req.getParameter("mid");
		String content= req.getParameter("content");
		
		CounselDao dao=new CounselDao();
		dao.conselApply(mid, content);
		
		req.getRequestDispatcher("/contactus/counsel_after.jsp").forward(req, resp);
		;
		
	}
}
