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
		//�޾ƿ��� �з����͵� ���� ���� ���� �� 
		
		int mnum= Integer.parseInt(req.getParameter("mnum"));
		
		int snum; 
			if(req.getParameter("snum").trim().equals("�Ϲ�ȸ��")){
				snum=1;
			}else if(req.getParameter("snum").trim().equals("����")){
				snum=2;	
			}else{
				snum=0; //�Ϲ�ȸ���� ������ �ƴҸ��� ������ snum
			}
		
		String mid=req.getParameter("mid").trim();
		String mname=req.getParameter("mname").trim();
		Date mbirth = java.sql.Date.valueOf(req.getParameter("mbirth"));
		
		int mzen; //�����ڽ��� �ϸ� ����Ʈ�� �� ����; 
			if(req.getParameter("mzen").trim().equals("��")){
				mzen=1;
			}else if(req.getParameter("mzen").trim().equals("��")){
				mzen=2;	
			}else{
				mzen=0; //���ڵ� ���ڵ� �ƴϸ� ���� 0�س���	
			}	
			
		int mphone=Integer.parseInt(req.getParameter("mphone"));
		String mmail=req.getParameter("mmail");
		String maddress=req.getParameter("maddress");
		int maddnum=Integer.parseInt(req.getParameter("maddnum"));
		Date joindate = java.sql.Date.valueOf(req.getParameter("joindate"));;
		int rightcode=Integer.parseInt(req.getParameter("rightcode"));
		
	}
	
	
}
