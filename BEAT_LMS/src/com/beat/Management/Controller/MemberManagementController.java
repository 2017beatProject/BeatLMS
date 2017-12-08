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
	
		
		//ó�� ���ӽ� ���� ������, ������ �Խñ� ��, �˻� Ű����
		String pageParam = req.getParameter("page");
		String keywordParam = req.getParameter("keyword");	
		String selectParam = req.getParameter("select");
		//select �� 1:��� 2:���̵� 3:�̸� 4:�μ�
		
		

		
		int page= 1; //ó���� 1�������� ����
		String keyword =""; 
		int select=2;
		
			if(pageParam!=null) page= Integer.parseInt(pageParam);
			if(keywordParam!=null) keyword =keywordParam; 
			if(selectParam!=null) select= Integer.parseInt(selectParam);

			
		int pageStart=1+(page-1)*10;	//���������� 10������� //DB rownum�� �˻����۹�ȣ
		int pageEnd =pageStart+10-1; //���������� 10�������	//DB rownum�� �˻�����ȣ
		
		 MemberManagementDao dao= new  MemberManagementDao();
		 ArrayList<MemberManagementDto> list;
		 
		 
		 System.out.println(keyword);
		 
		if(select==1){ //���
			
			 list = dao.getByMnumList(keyword, pageStart, pageEnd);
			 
		}else if(select==3){//�̸�
			 list = dao.getByMnameList(keyword, pageStart, pageEnd);
		}else if(select==4){ //�μ�
			 list = dao.getByDeptList(keyword, pageStart, pageEnd);
		}else{//id //�⺻//selectParam=2
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
