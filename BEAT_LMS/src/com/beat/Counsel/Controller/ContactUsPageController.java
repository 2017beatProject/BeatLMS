package com.beat.Counsel.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/contactus.lms")
public class ContactUsPageController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
				
			HttpSession session=req.getSession();
			String mid=(String)session.getAttribute("mid");		
			req.setAttribute("mid", mid);
			req.getRequestDispatcher("/contactus/counsel.jsp").forward(req,resp);		
	}
}
