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

			String mail_to = mmail;// �޴� ����� �����ַΰ� ������ mail_to�� ����.(�̸� ���϶���)

			String title = "<BEAT_Camp_LMS_�������Ϲ߼�>";

			String contents = "���� ��� : " + "BEAT_CAMP ������" + "&lt;" + mail_from
					+ "&gt;<br><br>" + "���������Ͻ÷��� �Ʒ��� �ּ�â�� Ŭ���ϼ���"
					+ "<p>http://localhost:8080/BEAT_LMS/confirm.lms?confrim='beatWell'</p>";

			mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8"); // text����
																			// utf-8��
																			// Ÿ��
																			// ��ȯ

			mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");

			Properties props = new Properties(); // ���� ������ ���� ������ �����ؾ� �� ����.. Ư��
													// 465�� ���� SMTP�ʼ� ��Ʈ

			props.put("mail.transport.protocol", "smtp");

			props.put("mail.smtp.host", "smtp.gmail.com");

			props.put("mail.smtp.port", "465");

			props.put("mail.smtp.starttls.enable", "true");

			props.put("mail.smtp.socketFactory.port", "465");

			props.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");

			props.put("mail.smtp.socketFactory.fallback", "false");

			props.put("mail.smtp.auth", "true");

			Authenticator auth = new SMTPAuthenticator();// ���ۿ� �α����ϴ� ��ü

			Session sess = Session.getDefaultInstance(props, auth); // �Ӽ�����
																	// SESSION����
																	// �����Ѵ�

			MimeMessage msg = new MimeMessage(sess);

			msg.setFrom(new InternetAddress(mail_from));

			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(
					mail_to));

			msg.setSubject(title, "UTF-8");

			msg.setContent(contents, "text/html; charset=UTF-8");

			msg.setHeader("Content-type", "text/html; charset=UTF-8");

			System.out.println("��� ������?2");
			Transport.send(msg);

			System.out.println("�߼ۼ���");
			out= resp.getWriter();
			out.write("{\"list\":[{\"result\":\"success\"}]}");
			System.out.println("{\"list\":[{\"result\":\"success\"}]}");
		} catch (Exception e) {
			System.out.println("�߼۽���");
			out.write("{\"list\":[{\"result\":\"falure\"}]\"}");
			
		} finally {

		}

	}
}
