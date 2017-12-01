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
		System.out.print("직원:1 / 수강생:2 ||");
		int snum=Integer.parseInt(sc.nextLine());
		System.out.print("이름 ||");
		String mname=sc.nextLine();
		System.out.print("생년월일 ex)2017-07-01 ||");
		Date mbirth = Date.valueOf(sc.nextLine());		
		System.out.print("성별 남자:1 여자:2 ||");
		int mzen=Integer.parseInt(sc.nextLine());
		System.out.print("전화번호 ||");
		int mphone=Integer.parseInt(sc.nextLine());
		System.out.print("이메일주소 ||");
		String mmail=sc.nextLine();
		System.out.print("집주소||");
		String maddress=sc.nextLine();
		System.out.print("우편번호||");
		int maddnum=Integer.parseInt(sc.nextLine());
		System.out.print("id||");
		String id=sc.nextLine();
		System.out.print("pw||");
		String pw=sc.nextLine();
		AccountantDao dao =new AccountantDao();
		dao.memberJoin(snum, id,pw,mname, mbirth, mzen, mphone, mmail, maddress, maddnum);

		
	};
	
	
		
		
		
		
	
	
}
