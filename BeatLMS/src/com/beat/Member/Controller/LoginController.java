package com.beat.Member.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beat.Member.model.LoginDao;

@WebServlet("/login.lms")
public class LoginController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
		
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String mid = req.getParameter("mid");
		
		String mpw = req.getParameter("mpw");
		
		LoginDao loginDao = new LoginDao();
		loginDao.memberLogin(mid, mpw);
		
		HttpSession session = req.getSession();
		if(loginDao.memberLogin(mid, mpw)) {
			req.setAttribute("msg", "successed");
			session.setAttribute("result", true);
			req.getRequestDispatcher("/index/index_post.jsp").forward(req, resp);
		}
		
		else {
			req.setAttribute("msg", "failed");
			session.setAttribute("result", false);
			req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
		}
		
	}

}
