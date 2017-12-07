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

@WebServlet(value="/oneMemEdit.lms")
public class MemberManagementEditController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String mnum = req.getParameter("mnum");
		
		OneMemManagementDao dao = new OneMemManagementDao();
		
		ArrayList<OneMemManagementDto> list = dao.getOne(mnum);

		req.setAttribute("listForEdit", list);
		
		 req.getRequestDispatcher("/Adm_Adm/memEdit.jsp").forward(req, resp);
	}
	
}
