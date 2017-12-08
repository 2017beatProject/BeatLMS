package com.beat.Management.Controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.MemberManagementDao;
import com.beat.Management.model.MemberManagementDto;

@WebServlet(value="/mnglist.lms")
public class MemberManagementController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
	
		
		//처음 접속시 뷰의 페이지, 나오는 게시글 수, 검색 키워드
		String pageParam = req.getParameter("page");
		String keywordParam = req.getParameter("keyword");	
		String selectParam = req.getParameter("select");
		//select 값 1:사번 2:아이디 3:이름 4:부서
		
		

		
		int page= 1; //처음엔 1페이지로 접속
		String keyword =""; 
		int select=2;
		
			if(pageParam!=null) page= Integer.parseInt(pageParam);
			if(keywordParam!=null) keyword =keywordParam; 
			if(selectParam!=null) select= Integer.parseInt(selectParam);

			
		int pageStart=1+(page-1)*10;	//한페이지에 10개씩출력 //DB rownum의 검색시작번호
		int pageEnd =pageStart+10-1; //한페이지에 10개씩출력	//DB rownum의 검색끝번호
		
		 MemberManagementDao dao= new  MemberManagementDao();
		 ArrayList<MemberManagementDto> list;
		 
		 
		 System.out.println(keyword);
		 
		if(select==1){ //사번
			
			 list = dao.getByMnumList(keyword, pageStart, pageEnd);
			 
		}else if(select==3){//이름
			 list = dao.getByMnameList(keyword, pageStart, pageEnd);
		}else if(select==4){ //부서
			 list = dao.getByDeptList(keyword, pageStart, pageEnd);
		}else{//id //기본//selectParam=2
			 list = dao.getAllList(keyword, pageStart, pageEnd);
		}
		 
		 int entireCnt = dao.getEntireCnt();
		 
		 
		 req.setAttribute("AllList", list);
		 
		 req.setAttribute("page", page);
		 req.setAttribute("keyword", keyword);
		 req.setAttribute("total", entireCnt);
		
	//	 req.getRequestDispatcher("/Adm_Adm/testMNG.jsp").forward(req, resp);
		 req.getRequestDispatcher("/Adm_Adm/member.jsp").forward(req, resp);
		 
	}
	
}
