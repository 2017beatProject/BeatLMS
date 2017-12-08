package com.beat.Member.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RespectBinding;

import com.beat.Member.model.LoginDao;
import com.beat.Member.model.LoginDto;

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
		String snum = req.getParameter("radioName");
		
		
		//System.out.println(snum+"받은 라디오값음?");
	
		
		String sendTo = "";
		
		LoginDao loginDao = new LoginDao();
		ArrayList<LoginDto> list = loginDao.memberLogin(mid, mpw, snum); //로그인 처리 
		HttpSession session = req.getSession(); 
		
			
			if(list.get(0).getloginResult()==true){ //로그인 성공시 메인으로 넘어감
				
				
				//dao에서 snum검사 처리 완료
				
				if(snum.equals("1")){ //일반 회원 
					sendTo ="/index/index_post.jsp";
					
				}else if(snum.equals("2")){//직원
					sendTo ="/index/adindex.jsp";
				}
				
				
				
				req.setAttribute("loginChk", true);				
				
				session.setAttribute("result", true);
				session.setAttribute("mid", list.get(0).getMid()); //성공시 세션에 아이디 넣어줌
				session.setAttribute("snum", snum); //성공시 세션에 snum 넣어줌
				
				session.setMaxInactiveInterval(30*60);
				
				
			}else{ //로그인 실패시 다시 로그인 창으로
				
				sendTo = "/login/login.jsp";
				
				req.setAttribute("loginChk", false);
				session.setAttribute("result", false);
			}
			
		req.getRequestDispatcher(sendTo).forward(req, resp);
		
	}
	
}