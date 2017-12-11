package com.beat.Counsel.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Counsel.Model.QnaDetailDao;
import com.beat.Counsel.Model.QnaDto;


@WebServlet(value="/qnadetail.lms")
public class QnADetailController extends HttpServlet{
//���������/�󼼺���� �ٸ� ����� �۾��ϰ� �����Ƿ� QnaPage��Ʈ�ѷ��� �ٹ������ �ȳְ� ���� ���ϴ�
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		int lmsblog = Integer.parseInt(req.getParameter("lmsblog"));
		System.out.println(lmsblog);
		
		QnaDetailDao dao = new QnaDetailDao();
		ArrayList<QnaDto> list = dao.getOneQna(lmsblog);
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/contactus/Q&A_detail_edit.jsp").forward(req, resp);
		
		
		
		
		
	}
}
