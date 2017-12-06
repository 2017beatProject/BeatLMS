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
		
		//ó�� ���ӽ� ���� ������, ������ �Խñ� ��, �˻� Ű����
		String pageParam = req.getParameter("page");
		String keywordParam = req.getParameter("keyword");
		
		
		int page= 1; //ó���� 1�������� ����
		String keyword =""; 
		
			if(pageParam!=null) page= Integer.parseInt(pageParam);
			if(keywordParam!=null) keyword =keywordParam; 
		
		int pageStart=1+(page-1)*10;	//���������� 10������� //DB rownum�� �˻����۹�ȣ
		int pageEnd =pageStart+10-1; //���������� 10�������	//DB rownum�� �˻�����ȣ
		
		 MemberManagementDao dao= new  MemberManagementDao();
		 
		 ArrayList<MemberManagementDto> list = dao.getAllList(keyword, pageStart, pageEnd);
		 int entireCnt = dao.getEntireCnt();
		 
		 
		 req.setAttribute("AllList", list);
		 
		 req.setAttribute("page", page);
		 req.setAttribute("keyword", keyword);
		 req.setAttribute("total", entireCnt);
		
		 req.getRequestDispatcher("/Adm_Adm/testMNG.jsp").forward(req, resp);
		 
	}
	
}
