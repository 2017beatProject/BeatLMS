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
		
	//	System.out.println(mnum);
		
//		int snum; 
//			if(req.getParameter("snum").trim().equals("일반회원")){
//				snum=1;
//			}else if(req.getParameter("snum").trim().equals("직원")){
//				snum=2;	
//			}else{
//				snum=1; //일반회원도 직원도 아닐리는 없지만 안정하면 전부 일반회원되는거... 
//			}
		
//		String mid=req.getParameter("mid").trim();
		String mname=req.getParameter("name").trim();
		
		//System.out.println("mname"+mname);
		
		Date mbirth = java.sql.Date.valueOf(req.getParameter("mbirth"));
	//	System.out.println("mbirth"+mbirth);
		
		int mzen=Integer.parseInt(req.getParameter("mzen")); //라디오박스로 하면 프론트가 좀 힘들 거 같은..
//			if(req.getParameter("mzen").trim().equals("남")){
//				mzen=1;
//			}else if(req.getParameter("mzen").trim().equals("여")){
//				mzen=2;	
//			}else{
//				mzen=1; //안정하면 그냥 남자
//			}	
	//	System.out.println("mzen"+mzen);
			
		int mphone=Integer.parseInt(req.getParameter("mphone"));
	//	System.out.println("mphone"+mphone);
		
		String mmail=req.getParameter("mmail");
	//	System.out.println("mmail"+mmail);
		
		String maddress=req.getParameter("maddress"); //도로명주소
		if(maddress.isEmpty()){maddress="임시주소";}
	//	System.out.println("maddress"+maddress);
		
		String adn = req.getParameter("maddnum");
		int maddnum;
		if(adn.isEmpty()){ 
			maddnum = 111111;
		}else{
			maddnum=Integer.parseInt(adn);
		}
		
		//System.out.println("maddnum"+maddnum);
		
		
		
	
		
		
		OneMemManagementEditUpdateDao dao = new OneMemManagementEditUpdateDao();
		int updateResult = dao.EditOne(mnum, mname, mbirth, mzen, mphone, mmail, maddress, maddnum);
		
		if(updateResult>0){//성공하면
			url="mnglist.lms";
			System.out.println("회원 정보 수정 성공");
			
		}else{
			url="mngDetail.lms?mnum="+mnum;
			System.out.println("회원 정보 수정 실패");	
			//실패시~~ 어쩌지?
		}
		
		resp.sendRedirect(url);
	}
	
	
}
