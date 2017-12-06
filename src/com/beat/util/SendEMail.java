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

 

        String m_name =     "비트캠프 LMS 관리자";// 보내는 사람 이름으로 정할 것

        String m_email =    request.getParameter("email");//전달바는 받는 사람 메일주소

        String m_title =    request.getParameter("title");//제목을 전달받는다.

        String m_text =     request.getParameter("content");//내용을 전달받는다.

        System.out.println("받는메일주소:"+m_email+"제목:"+m_title+"내용:"+m_text);
 

        try {

            String mail_from =  "hbclass6.1@gmail.com";

            String mail_to =   m_email;//받는 사람의 메일주로값 변수를 mail_to로 쓴다.(이름 통일때문)

            String title =      "<BEAT_Camp_LMS_인증메일발송>" + m_title;

            String contents =   "보낸 사람 : " + m_name + "&lt;" + mail_from + "&gt;<br><br>" + m_title + "<br><br>" + m_text;

 

            mail_from = new String(mail_from.getBytes("UTF-8"),"UTF-8"); // text값을 utf-8로 타입 전환

            mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");

           
            Properties props = new Properties(); //구글 메일을 쓰기 때문에 설정해야 할 값들.. 특히 465는 구글 SMTP필수 포트

            props.put("mail.transport.protocol", "smtp");

            props.put("mail.smtp.host", "smtp.gmail.com");

            props.put("mail.smtp.port", "465");

            props.put("mail.smtp.starttls.enable", "true");

            props.put("mail.smtp.socketFactory.port", "465");

            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            props.put("mail.smtp.socketFactory.fallback", "false");

            props.put("mail.smtp.auth", "true");

            Authenticator auth = new SMTPAuthenticator();// 구글에 로그인하는 객체

            Session sess = Session.getDefaultInstance(props, auth); // 속성값을 SESSION으로 저장한다

            MimeMessage msg = new MimeMessage(sess);
            
            msg.setFrom(new InternetAddress(mail_from));
            
            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));
            
            msg.setSubject(title, "UTF-8");

            msg.setContent(contents, "text/html; charset=UTF-8");

            msg.setHeader("Content-type", "text/html; charset=UTF-8");

 
            System.out.println("어디서 에러냐?2");
            Transport.send(msg);

            response.sendRedirect("index.lms");
            System.out.println("발송성공");

        } catch (Exception e) {
            System.out.println("발송실패");
            response.sendRedirect("SendEmial.jsp");

        } finally {

 

        }

    }

 

}