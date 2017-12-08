package com.beat.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/confirm.lms")
public class MailConfirm extends HttpServlet{

	String confirm;
	HttpSession session;
	public MailConfirm() {
		// TODO Auto-generated constructor stub
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.getRequestDispatcher("login/mailCheck.jsp").forward(req, resp);	
		session=req.getSession();
		session.setAttribute("confirm","check");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		PrintWriter out=resp.getWriter();
		session=req.getSession();
		confirm=session.getAttribute("confirm").toString();
		System.out.println(confirm);
		if(confirm.equals("check")){			
			out.print("{\"confirm\":[{\"mail\":\"check\"}]}");
			
		}else{
			out.print("{\"confirm\":[{\"mail\":\"uncheck\"}]}");
		}		
	}
}
