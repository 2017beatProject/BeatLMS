package com.beat.Management.Controller;

import java.io.IOException;
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
		
		//처음 접속시 뷰의 페이지, 나오는 게시글 수, 검색 키워드
		String pageParam = req.getParameter("page");
		String keywordParam = req.getParameter("keyword");
		
		
		int page= 1; //처음엔 1페이지로 접속
		String keyword =""; 
		
			if(pageParam!=null) page= Integer.parseInt(pageParam);
			if(keywordParam!=null) keyword =keywordParam; 
		
		int pageStart=1+(page-1)*10;	//한페이지에 10개씩출력 //DB rownum의 검색시작번호
		int pageEnd =pageStart+10-1; //한페이지에 10개씩출력	//DB rownum의 검색끝번호
		
		 MemberManagementDao dao= new  MemberManagementDao();
		 
		 ArrayList<MemberManagementDto> list = dao.getAllList(keyword, pageStart, pageEnd);
		 int entireCnt = dao.getEntireCnt();
		 
		 
		 req.setAttribute("AllList", list);
		 
		 req.setAttribute("page", page);
		 req.setAttribute("keyword", keyword);
		 req.setAttribute("total", entireCnt);
		
	//	 req.getRequestDispatcher("/Adm_Adm/testMNG.jsp").forward(req, resp);
		 req.getRequestDispatcher("/administration/member.jsp").forward(req, resp);
		 
	}
	
}
