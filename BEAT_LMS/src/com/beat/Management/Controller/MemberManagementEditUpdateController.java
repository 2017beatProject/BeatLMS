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
		//�޾ƿ��� �з����͵� ���� ���� ���� �� 
		
		int mnum= Integer.parseInt(req.getParameter("mnum"));
		
	//	System.out.println(mnum);
		
//		int snum; 
//			if(req.getParameter("snum").trim().equals("�Ϲ�ȸ��")){
//				snum=1;
//			}else if(req.getParameter("snum").trim().equals("����")){
//				snum=2;	
//			}else{
//				snum=1; //�Ϲ�ȸ���� ������ �ƴҸ��� ������ �����ϸ� ���� �Ϲ�ȸ���Ǵ°�... 
//			}
		
//		String mid=req.getParameter("mid").trim();
		String mname=req.getParameter("name").trim();
		
		//System.out.println("mname"+mname);
		
		Date mbirth = java.sql.Date.valueOf(req.getParameter("mbirth"));
	//	System.out.println("mbirth"+mbirth);
		
		int mzen=Integer.parseInt(req.getParameter("mzen")); //�����ڽ��� �ϸ� ����Ʈ�� �� ���� �� ����..
//			if(req.getParameter("mzen").trim().equals("��")){
//				mzen=1;
//			}else if(req.getParameter("mzen").trim().equals("��")){
//				mzen=2;	
//			}else{
//				mzen=1; //�����ϸ� �׳� ����
//			}	
	//	System.out.println("mzen"+mzen);
			
		int mphone=Integer.parseInt(req.getParameter("mphone"));
	//	System.out.println("mphone"+mphone);
		
		String mmail=req.getParameter("mmail");
	//	System.out.println("mmail"+mmail);
		
		String maddress=req.getParameter("maddress"); //���θ��ּ�
		if(maddress.isEmpty()){maddress="�ӽ��ּ�";}
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
		
		if(updateResult>0){//�����ϸ�
			url="mnglist.lms";
			System.out.println("ȸ�� ���� ���� ����");
			
		}else{
			url="mngDetail.lms?mnum="+mnum;
			System.out.println("ȸ�� ���� ���� ����");	
			//���н�~~ ��¼��?
		}
		
		resp.sendRedirect(url);
	}
	
	
}
