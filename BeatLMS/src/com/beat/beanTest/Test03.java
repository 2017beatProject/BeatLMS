package com.beat.beanTest;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Scanner;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.beat.Member.model.AccountantDao;


@WebServlet("/test01.do")
public class Test03 extends HttpServlet {

	protected void doGet(javax.servlet.http.HttpServletRequest req, javax.servlet.http.HttpServletResponse resp) throws javax.servlet.ServletException ,java.io.IOException {
						
		Scanner sc=new Scanner(System.in);
		System.out.print("����:1 / ������:2 ||");
		int snum=Integer.parseInt(sc.nextLine());
		System.out.print("�̸� ||");
		String mname=sc.nextLine();
		System.out.print("������� ex)2017-07-01 ||");
		Date mbirth = Date.valueOf(sc.nextLine());		
		System.out.print("���� ����:1 ����:2 ||");
		int mzen=Integer.parseInt(sc.nextLine());
		System.out.print("��ȭ��ȣ ||");
		int mphone=Integer.parseInt(sc.nextLine());
		System.out.print("�̸����ּ� ||");
		String mmail=sc.nextLine();
		System.out.print("���ּ�||");
		String maddress=sc.nextLine();
		System.out.print("�����ȣ||");
		int maddnum=Integer.parseInt(sc.nextLine());
		System.out.print("id||");
		String id=sc.nextLine();
		System.out.print("pw||");
		String pw=sc.nextLine();
		AccountantDao dao =new AccountantDao();
		dao.memberJoin(snum, id,pw,mname, mbirth, mzen, mphone, mmail, maddress, maddnum);

		
	};
	
	
		
		
		
		
	
	
}
