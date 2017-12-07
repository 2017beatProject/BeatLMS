package com.beat.Management.Controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value="/oneMemEditUpdate.lms")
public class MemberManagementEditUpdateController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//받아오는 패러미터들 죨라 아주 많음 ㅎ 
		
		int mnum= Integer.parseInt(req.getParameter("mnum"));
		
		int snum; 
			if(req.getParameter("snum").trim().equals("일반회원")){
				snum=1;
			}else if(req.getParameter("snum").trim().equals("직원")){
				snum=2;	
			}else{
				snum=0; //일반회원도 직원도 아닐리는 없지만 snum
			}
		
		String mid=req.getParameter("mid").trim();
		String mname=req.getParameter("mname").trim();
		Date mbirth = java.sql.Date.valueOf(req.getParameter("mbirth"));
		
		int mzen; //라디오박스로 하면 프론트가 좀 힘듬; 
			if(req.getParameter("mzen").trim().equals("남")){
				mzen=1;
			}else if(req.getParameter("mzen").trim().equals("여")){
				mzen=2;	
			}else{
				mzen=0; //남자도 여자도 아니면 대충 0해놓음	
			}	
			
		int mphone=Integer.parseInt(req.getParameter("mphone"));
		String mmail=req.getParameter("mmail");
		String maddress=req.getParameter("maddress");
		int maddnum=Integer.parseInt(req.getParameter("maddnum"));
		Date joindate = java.sql.Date.valueOf(req.getParameter("joindate"));;
		int rightcode=Integer.parseInt(req.getParameter("rightcode"));
		
	}
	
	
}
