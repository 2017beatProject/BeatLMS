package com.beat.Management.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Management.model.CounselPageDao;
import com.beat.Management.model.CounselPageDto;

@WebServlet("/adminCousel.lms")
public class CounselPageController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8"); //°Ë»ö...
		
		CounselPageDao dao = new CounselPageDao();
		ArrayList<CounselPageDto> list = dao.getCounselList();
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/administration/counselList.jsp").forward(req, resp);
	}
}
