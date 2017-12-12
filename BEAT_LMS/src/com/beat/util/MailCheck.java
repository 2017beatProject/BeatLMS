package com.beat.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MailCheck extends HttpServlet {

	PrintWriter out;
	
	public MailCheck() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		resp.setContentType("application/json; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");

		String mmail = req.getParameter("mmail");

		try {

			String mail_from = "hbclass6.1@gmail.com";

			String mail_to = mmail;// 받는 사람의 메일주로값 변수를 mail_to로 쓴다.(이름 통일때문)

			String title = "<BEAT_Camp_LMS_인증메일발송>";

			String contents = "보낸 사람 : " + "BEAT_CAMP 관리자" + "&lt;" + mail_from
					+ "&gt;<br><br>" + "본인인증하시려면 아래의 주소창을 클릭하세요"
					+ "<p>http://localhost:8080/BEAT_LMS/confirm.lms?confrim='beatWell'</p>";

			mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8"); // text값을
																			// utf-8로
																			// 타입
																			// 전환

			mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");

			Properties props = new Properties(); // 구글 메일을 쓰기 때문에 설정해야 할 값들.. 특히
													// 465는 구글 SMTP필수 포트

			props.put("mail.transport.protocol", "smtp");

			props.put("mail.smtp.host", "smtp.gmail.com");

			props.put("mail.smtp.port", "465");

			props.put("mail.smtp.starttls.enable", "true");

			props.put("mail.smtp.socketFactory.port", "465");

			props.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");

			props.put("mail.smtp.socketFactory.fallback", "false");

			props.put("mail.smtp.auth", "true");

			Authenticator auth = new SMTPAuthenticator();// 구글에 로그인하는 객체

			Session sess = Session.getDefaultInstance(props, auth); // 속성값을
																	// SESSION으로
																	// 저장한다

			MimeMessage msg = new MimeMessage(sess);

			msg.setFrom(new InternetAddress(mail_from));

			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(
					mail_to));

			msg.setSubject(title, "UTF-8");

			msg.setContent(contents, "text/html; charset=UTF-8");

			msg.setHeader("Content-type", "text/html; charset=UTF-8");

			System.out.println("어디서 에러냐?2");
			Transport.send(msg);

			System.out.println("발송성공");
			out= resp.getWriter();
			out.write("{\"list\":[{\"result\":\"success\"}]}");
			System.out.println("{\"list\":[{\"result\":\"success\"}]}");
		} catch (Exception e) {
			System.out.println("발송실패");
			out.write("{\"list\":[{\"result\":\"falure\"}]\"}");
			
		} finally {

		}

	}
}
