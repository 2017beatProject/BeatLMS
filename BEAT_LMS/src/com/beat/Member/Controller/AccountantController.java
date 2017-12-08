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
		
//		int snum = Integer.parseInt(req.getParameter("snum").trim());
		//직원은 1, 일반회원은 2		
		
		String snum = req.getParameter("snum");
		System.out.println(snum);
		
		String mid = req.getParameter("mid");
		
		String mpw = req.getParameter("mpw");
		
		String mname = req.getParameter("mname");
		
		//Date 변환 문제
		String mbirthStr = req.getParameter("mbirth");
		//DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date mbirth = java.sql.Date.valueOf(mbirthStr);
		
		
		int mzen = Integer.parseInt(req.getParameter("mzen"));
		
		int mphone = Integer.parseInt(req.getParameter("mphone"));
		
		String mmail = req.getParameter("mmail");
		
		String maddress = req.getParameter("maddress");
		
		int maddnum = Integer.parseInt(req.getParameter("maddnum"));
		
		
		AccountantAdminDao accountantDao = new AccountantAdminDao();
		
		accountantDao.memberJoin(4, mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, 234);
		
		req.getRequestDispatcher("/login/joinInfo.jsp").forward(req, resp);
		
			
	}

}
