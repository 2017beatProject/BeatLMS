package com.beat.Management.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.OneMemManagementDao;
import com.beat.Management.model.OneMemManagementDto;

@WebServlet(value="/mngDetail.lms")
public class MemberManagementDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String mnum = req.getParameter("mnum");
		
		OneMemManagementDao dao = new OneMemManagementDao();
		
		ArrayList<OneMemManagementDto> list = dao.getOne(mnum);
		req.setAttribute("oneList", list);
		
	 //req.getRequestDispatcher("/Adm_Adm/memDetail.jsp").forward(req, resp);
		
	req.getRequestDispatcher("/administration/member_detail.jsp").forward(req, resp);
	
	}
	
}
