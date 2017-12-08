package com.beat.Management.Controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.OneMemManagementEditUpdateDao;

@WebServlet(value="/oneMemEditUpdate.lms")
public class MemberManagementEditUpdateController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String url;
		//받아오는 패러미터들 죨라 아주 많음 ㅎ 
		
		int mnum= Integer.parseInt(req.getParameter("mnum"));
		
		int snum; 
			if(req.getParameter("snum").trim().equals("일반회원")){
				snum=1;
			}else if(req.getParameter("snum").trim().equals("직원")){
				snum=2;	
			}else{
				snum=1; //일반회원도 직원도 아닐리는 없지만 안정하면 전부 일반회원되는거... 
			}
		
		String mid=req.getParameter("mid").trim();
		String mname=req.getParameter("mname").trim();
		Date mbirth = java.sql.Date.valueOf(req.getParameter("mbirth"));
		
		int mzen; //라디오박스로 하면 프론트가 좀 힘들 거 같은..
			if(req.getParameter("mzen").trim().equals("남")){
				mzen=1;
			}else if(req.getParameter("mzen").trim().equals("여")){
				mzen=2;	
			}else{
				mzen=1; //안정하면 그냥 남자
			}	
			
		int mphone=Integer.parseInt(req.getParameter("mphone"));
		String mmail=req.getParameter("mmail");
		String maddress=req.getParameter("maddress");
		int maddnum=Integer.parseInt(req.getParameter("maddnum"));
		Date joindate = java.sql.Date.valueOf(req.getParameter("joindate"));
		int rightcode=Integer.parseInt(req.getParameter("rightcode"));
		
		OneMemManagementEditUpdateDao dao = new OneMemManagementEditUpdateDao();
		int updateResult = dao.EditOne(mnum, snum, mid, mname, mbirth, mzen, mphone, mmail, maddress, maddnum, joindate, rightcode);
		
		if(updateResult>0){//성공하면
			url="mnglist.lms";
			System.out.println("성공");
		}else{
			url="mngDetail.lms?mnum="+mnum;
			System.out.println("실패");	
			//실패시~~ 어쩌지?
		}
		
		resp.sendRedirect(url);
	}
	
	
}
