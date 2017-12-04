package com.beat.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.beat.Member.model.LoginDao;

@WebServlet("/test")
public class Test01 extends HttpServlet {


	protected void doGet(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp) throws javax.servlet.ServletException ,java.io.IOException {
		LoginDao dao=new LoginDao();
				
		System.out.println(dao.memberLogin("%id1111%","pass1!"));
		
	};

		
		
	

}
