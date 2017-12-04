package com.beat.loginTest;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.searchTest.SearchTestDao;
import com.beat.searchTest.SearchTestDto;


@WebServlet(value="/login.lms")
public class LoginTestController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String testLoginID = req.getParameter("mid");
		String testLoginPW = req.getParameter("mpw");
		
		String testLoginRadio = req.getParameter("radio");
		//여기서 라디오 값으로 회원값 분류 받아서 직원/일반 처리
		
		resp.getWriter().write(getJSON(testLoginID, testLoginPW)); //use the method below
	
	}
	
	
	
	public String getJSON(String testLoginID, String testLoginPW) { 
		if(testLoginID==null) testLoginID=""; 
		StringBuffer strbuf = new StringBuffer(""); 
		
		strbuf.append("{\"result\":["); 
			LoginTestDao dao = new LoginTestDao();
			ArrayList<LoginTestDto> list = dao.testLogin(testLoginID, testLoginPW); 

			for(int i=0; i<list.size(); i++) { 
				strbuf.append("[{\"value\": \""+list.get(i).getMid()+"\"}, ");
				strbuf.append("{\"value\": "+list.get(i).getloginResult()+"}] ");		
			}
			
			strbuf.append("]}");
			
		return strbuf.toString();  
	}
	
	
	
}
