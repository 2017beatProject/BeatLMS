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
		System.out.println("���̵�:"+mid);
		
		String mpw = req.getParameter("password");
		System.out.println("���:"+mpw);
		
		String mname = req.getParameter("name");
		System.out.println("�̸�:"+mname);
		
		//Date ��ȯ ����
		String mbirthStr = req.getParameter("birth");
		System.out.println("�������str:"+mbirthStr);
		//DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date mbirth = java.sql.Date.valueOf(mbirthStr);
		System.out.println("�������date:"+mbirth);
		
		int mzen = Integer.parseInt(req.getParameter("gender"));
		System.out.println("����:"+mzen);
		
		int mphone = Integer.parseInt(req.getParameter("number"));
		System.out.println("����ó:"+mphone);
		
		String mmail = req.getParameter("email");
		System.out.println("�̸���:"+mmail);
		
		String maddress = req.getParameter("maddress");
		System.out.println("���θ��ּ�:"+maddress);
		
		int maddnum = Integer.parseInt(req.getParameter("maddnum"));
		System.out.println("�����ȣ:"+maddnum);
		
		
		AccountantAdminDao accountantDao = new AccountantAdminDao();
		
//		accountantDao.memberJoin(snum, mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, maddnum);
		accountantDao.memberJoin(mid, mpw, mname, mbirth, mzen, mphone, mmail, maddress, maddnum);
		
		req.getRequestDispatcher("/login/login.jsp").forward(req, resp);
		
	
	}

}
