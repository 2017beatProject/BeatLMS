package com.beat.Member.Controller;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Member.model.AccountantAdminDao;

@WebServlet("/join.lms")
public class AccountantController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		
		req.getRequestDispatcher("/login/join.jsp").forward(req, resp);
	};
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int snum = Integer.parseInt(req.getParameter("snum"));
		
		String mid = req.getParameter("mid");
		
		String mpw = req.getParameter("mpw");
		
		String mname = req.getParameter("mname");
		
		//Date 변환 문제
		String mbirthStr = req.getParameter("mbirth");
		
		Date mbirth = java.sql.Date.valueOf(mbirthStr);
		
		int mzen = Integer.parseInt(req.getParameter("mzen"));
		
		int mphone = Integer.parseInt(req.getParameter("mphone"));
		
		String mmail = req.getParameter("mmail");
		
		String maddress = req.getParameter("maddress");
		
		int maddnum = Integer.parseInt(req.getParameter("maddnum"));
		
		
		AccountantAdminDao accountantDao = new AccountantAdminDao();
		
		accountantDao.memberJoin(snum, mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, maddnum);
		
		req.getRequestDispatcher("/index_post.jsp").forward(req, resp);
	
	}

}
