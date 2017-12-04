package com.beat.Member.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Member.model.ComNumCheckDao;

@WebServlet("/join_choice.lms")
public class ComNumCheckController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			req.getRequestDispatcher("/login/join_choice.jsp").forward(req, resp);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String param1= req.getParameter("comnum");
		String param2= req.getParameter("comname");
		String param3= req.getParameter("combirth");
		
		int comnum=Integer.parseInt(param1);
		String comname=param2;
		Date combirth=Date.valueOf(param3);
		
		ComNumCheckDao dao=new ComNumCheckDao();
		int comnumchk= dao.comNumcheck(comnum, comname, combirth);
		if(comnumchk==1){
			req.setAttribute("snum", 1);
			req.getRequestDispatcher("/index/adindex.jsp").forward(req,resp);
			System.out.println("인증되는 고니");
			// 인증 성공 > 관리자 페이지 이동
			
		}else if(comnumchk==0){
			req.setAttribute("comNumresult", false);
			req.getRequestDispatcher("/login/join_choice.jsp").forward(req, resp);
			System.out.println("인증노노");
			// 인증 불가 > 회원 가입 선택 화면으로 이동
		}
	
	}
	
}