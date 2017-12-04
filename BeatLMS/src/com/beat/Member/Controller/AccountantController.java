package com.beat.Member.Controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Member.model.AccountantAdminDao;

@WebServlet("/join.lms")
public class AccountantController extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp){
		
		try {
			req.getRequestDispatcher("/login/join.jsp").forward(req, resp);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
//		int snum = Integer.parseInt(req.getParameter("snum"));
		
		String mid = req.getParameter("id");
		System.out.println("아이디:"+mid);
		
		String mpw = req.getParameter("password");
		System.out.println("비번:"+mpw);
		
		String mname = req.getParameter("name");
		System.out.println("이름:"+mname);
		
		//Date 변환 문제
		String mbirthStr = req.getParameter("birth");
		System.out.println("생년월일str:"+mbirthStr);
		//DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date mbirth = java.sql.Date.valueOf(mbirthStr);
		System.out.println("생년월일date:"+mbirth);
		
		int mzen = Integer.parseInt(req.getParameter("gender"));
		System.out.println("성별:"+mzen);
		
		int mphone = Integer.parseInt(req.getParameter("number"));
		System.out.println("연락처:"+mphone);
		
		String mmail = req.getParameter("email");
		System.out.println("이메일:"+mmail);
		
		String maddress = req.getParameter("maddress");
		System.out.println("도로명주소:"+maddress);
		
		int maddnum = Integer.parseInt(req.getParameter("maddnum"));
		System.out.println("우편번호:"+maddnum);
		
		
		AccountantAdminDao accountantDao = new AccountantAdminDao();
		
//		accountantDao.memberJoin(snum, mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, maddnum);
		accountantDao.memberJoin(mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, maddnum);
		
		req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
		
	
	}

}
