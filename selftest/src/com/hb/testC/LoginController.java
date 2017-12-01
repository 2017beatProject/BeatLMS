package com.hb.testC;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hb.Model.testDao;
import com.hb.Model.testDto;

@WebServlet(value="/login.test")
public class LoginController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String userid =req.getParameter("id").trim();
		String userpw= req.getParameter("pw").trim();
		
		
		//일단 받아만 놓기로 
		testDao dao = new testDao();
		
		HttpSession session = req.getSession();
		
		int acc = dao.matchAcc(userid, userpw);
		
		if(acc>0){
			req.setAttribute("msg", "성공");
			
			session.setAttribute("result", true);
			session.setAttribute("id", userid);
			
			testDto bean = new testDto();
			bean.setId(userid);
			//bean.setPw(userpw);
			
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
			//성공시 메인으로
			
		}else{
			req.setAttribute("msg", "실패");
			session.setAttribute("result", false);
			
			req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
			//실패시 실패 메세지를 가지고 다시 로그인창
		}
		
		
		
	}
	

}
