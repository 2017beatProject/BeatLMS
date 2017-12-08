package com.beat.Management.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/student.lms")
public class StudentPageController extends HttpServlet{

		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException {
		
			req.getRequestDispatcher("/administration/student_choice.jsp").forward(req, resp);;
		}
}
