package com.beat.Member.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beat.Member.model.LoginDao;
import com.beat.Member.model.LoginDto;

@WebServlet("/login.lms")
public class LoginController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
		
	}

	
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
//			throws ServletException, IOException {
//		
//		String mid = req.getParameter("mid");
//		
//		String mpw = req.getParameter("mpw");
//		
//		LoginDao loginDao = new LoginDao();
//		boolean login = loginDao.memberLogin(mid, mpw);
//		
//		HttpSession session = req.getSession();
//		if(login==true) {
//			req.setAttribute("msg", "successed");
//			session.setAttribute("result", true);
//			req.getRequestDispatcher("/index/index_post.jsp").forward(req, resp);
//		}
//		
//		else if(login==false){
//			req.setAttribute("msg", "failed");
//			session.setAttribute("result", false);
//			req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
//		}
//		
//	} //이상 기존의 로그인 처리에 썼던 포스트 방식, 이하 ajax json 포스트
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String testLoginID = req.getParameter("mid");
		String testLoginPW = req.getParameter("mpw");
		
		String testLoginRadio = req.getParameter("radio");
		//여기서 라디오 값으로 회원값 분류 받아서 직원/일반 처리
		
		resp.getWriter().write(getJSON(testLoginID, testLoginPW, req)); //use the method below
	
	}
	
	
	
	public String getJSON(String testLoginID, String testLoginPW, HttpServletRequest req) { 
		if(testLoginID==null) testLoginID=""; 
		StringBuffer strbuf = new StringBuffer(""); 
		
//		strbuf.append("{\"result\":["); 
//			LoginDao dao = new LoginDao();
//			ArrayList<LoginDto> list = dao.memberLogin(testLoginID, testLoginPW); 
//
//			for(int i=0; i<list.size(); i++) { 
//				strbuf.append("[{\"value\": \""+list.get(i).getMid()+"\"}, ");
//				strbuf.append("{\"value\": "+list.get(i).getloginResult()+"}] ");	
//				
//				
//				if(list.get(i).getloginResult() == true){
//						HttpSession session = req.getSession();
//						session.setAttribute("sessionId", list.get(i).getMid());
//				}
//				
//				
//			}
//			
//			strbuf.append("]}");
			
		return strbuf.toString();  
	}
	

}