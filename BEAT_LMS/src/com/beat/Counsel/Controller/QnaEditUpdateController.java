package com.beat.Counsel.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beat.Counsel.Model.QnaEditUpdateDao;

@WebServlet(value="/qnaedit.lms")
public class QnaEditUpdateController extends HttpServlet{
		
		 @Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
			 
				req.setCharacterEncoding("UTF-8");
				
				
				int lmsblog = Integer.parseInt(req.getParameter("lmsblog"));
				String qnatitle = req.getParameter("title");
				String qnacontents = req.getParameter("contents");
				
				String url;
				
				QnaEditUpdateDao dao = new QnaEditUpdateDao();
				
				int updateResult = dao.editQna(qnatitle, qnacontents, lmsblog);
				
				
				if(updateResult>0){
					url="qna.lms";
					System.out.println("qna 수정 성공: lmsblog = "+lmsblog);
					
				}else{
					url="qna.lms";
					System.out.println("qna 수정 실패: lmsblog"+lmsblog);	
					
				}
				
				resp.sendRedirect(url);
				
				
				

		}
}
