package com.beat.util;

 

import java.io.IOException;
import java.util.Properties;

 


import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 

/**

 * Servlet implementation class SendMail

 */
@WebServlet("/sendMail.lms")
public class SendEMail extends HttpServlet {

    private static final long serialVersionUID = 1L;

 

    /**

     * @see HttpServlet#HttpServlet()

     */

    public SendEMail() {

        super();

        // TODO Auto-generated constructor stub

    }

 

    /**

     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)

     */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("SendEmail.jsp");

    }

 

    /**

     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)

     */

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // TODO Auto-generated method stub

 

        request.setCharacterEncoding("UTF-8");

 

        response.setContentType("text/html;charset=UTF-8");

        response.setCharacterEncoding("UTF-8");

 

        String m_name =     "��Ʈķ�� LMS ������";// ������ ��� �̸����� ���� ��

        String m_email =    request.getParameter("email");//���޹ٴ� �޴� ��� �����ּ�

        String m_title =    request.getParameter("title");//������ ���޹޴´�.

        String m_text =     request.getParameter("content");//������ ���޹޴´�.

        System.out.println("�޴¸����ּ�:"+m_email+"����:"+m_title+"����:"+m_text);
 

        try {

            String mail_from =  "hbclass6.1@gmail.com";

            String mail_to =   m_email;//�޴� ����� �����ַΰ� ������ mail_to�� ����.(�̸� ���϶���)

            String title =      "<BEAT_Camp_LMS_�������Ϲ߼�>" + m_title;

            String contents =   "���� ��� : " + m_name + "&lt;" + mail_from + "&gt;<br><br>" + m_title + "<br><br>" + m_text;

 

            mail_from = new String(mail_from.getBytes("UTF-8"),"UTF-8"); // text���� utf-8�� Ÿ�� ��ȯ

            mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");

           
            Properties props = new Properties(); //���� ������ ���� ������ �����ؾ� �� ����.. Ư�� 465�� ���� SMTP�ʼ� ��Ʈ

            props.put("mail.transport.protocol", "smtp");

            props.put("mail.smtp.host", "smtp.gmail.com");

            props.put("mail.smtp.port", "465");

            props.put("mail.smtp.starttls.enable", "true");

            props.put("mail.smtp.socketFactory.port", "465");

            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            props.put("mail.smtp.socketFactory.fallback", "false");

            props.put("mail.smtp.auth", "true");

            Authenticator auth = new SMTPAuthenticator();// ���ۿ� �α����ϴ� ��ü

            Session sess = Session.getDefaultInstance(props, auth); // �Ӽ����� SESSION���� �����Ѵ�

            MimeMessage msg = new MimeMessage(sess);
            
            msg.setFrom(new InternetAddress(mail_from));
            
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));
            
            msg.setSubject(title, "UTF-8");

            msg.setContent(contents, "text/html; charset=UTF-8");

            msg.setHeader("Content-type", "text/html; charset=UTF-8");

 
            System.out.println("��� ������?2");
            Transport.send(msg);

            response.sendRedirect("index.lms");
            System.out.println("�߼ۼ���");

        } catch (Exception e) {
            System.out.println("�߼۽���");
            response.sendRedirect("SendEmial.jsp");

        } finally {

 

        }

    }

 

}