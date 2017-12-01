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
		
		
		//�ϴ� �޾Ƹ� ����� 
		testDao dao = new testDao();
		
		HttpSession session = req.getSession();
		
		int acc = dao.matchAcc(userid, userpw);
		
		if(acc>0){
			req.setAttribute("msg", "����");
			
			session.setAttribute("result", true);
			session.setAttribute("id", userid);
			
			testDto bean = new testDto();
			bean.setId(userid);
			//bean.setPw(userpw);
			
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
			//������ ��������
			
		}else{
			req.setAttribute("msg", "����");
			session.setAttribute("result", false);
			
			req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
			//���н� ���� �޼����� ������ �ٽ� �α���â
		}
		
		
		
	}
	

}
