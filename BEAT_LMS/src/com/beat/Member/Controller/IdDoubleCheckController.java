package com.beat.Member.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Member.model.AccountantAdminDao;


public class IdDoubleCheckController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json; charset=UTF-8");
		
		AccountantAdminDao dao=new AccountantAdminDao();
		ArrayList<String> arr=dao.memberIdDoubleChk();
		PrintWriter out = resp.getWriter();
//		out.print("{\"list\":[");
//		out.print("{\"sabun\":1111,\"name\":\"guest01\"}");
//		out.print(",");
//		out.print("{\"sabun\":2222,\"name\":\"guest02\"}");
//		out.print(",");
//		out.print("{\"sabun\":3333,\"name\":\"guest03\"}");
//		out.print(",");
//		out.print("{\"sabun\":4444,\"name\":\"guest04\"}");
//		out.print(",");
//		out.print("{\"sabun\":5555,\"name\":\"guest05\"}");
//		out.print("]}");
	
		System.out.println(arr.get(0));
		out.print("{\"list\":[");
		for(int i=0;i<arr.size();i++){			
		out.print("{\"mid\":\""+arr.get(i)+"\"}");
		if(i!=(arr.size()-1)){out.print(",");}
		}
		out.print("]}");	
		System.out.println("나오냐?");
		System.out.println("오류없이 보냈는가?");
	}
	
	
}
