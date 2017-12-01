package com.beat.beanTest;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Member.model.AccountantAdminDao;
import com.beat.Member.model.MemberDto;
import com.beat.Member.model.MemberInfoDao;
import com.beat.Member.model.MemberInfoDto;

@WebServlet("/list.do")
public class Test02 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		MemberInfoDao accdao = new MemberInfoDao();

		List<MemberInfoDto> list = accdao.memberList();

		for (int i = 0; i < list.size(); i++) {					
			String mname = list.get(i).getMname();
			Date mbirth = list.get(i).getMbirth();
			int mzen = list.get(i).getMzen();
			int mphone = list.get(i).getMphone();
			String mmail = list.get(i).getMmail();
			String maddress = list.get(i).getMaddress();
			int maddnum = list.get(i).getMaddnum();
			Date joindate=list.get(i).getJoindate();

			System.out.println( mname +"|"  + mbirth
					+ "|" + mzen + "|" + mphone + "|" + mmail + "|" + maddress
					+ "|" + maddnum + "|"+ joindate);
		}
		req.getRequestDispatcher("index.jsp").forward(req,resp);

	}

}
