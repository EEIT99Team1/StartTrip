package controller.registration;

import java.io.IOException;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import model.service.mail.MailService;

@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	@Autowired
    MailService mailService;
    
    public MailServlet() {
        // TODO Auto-generated constructor stub
    }
    
	/**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

	/**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            //从tomcat中獲取JNDI容器
            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            //JNDI中獲取Mail的Session
            javax.mail.Session session = (javax.mail.Session) envCtx.lookup("mail/Session");

            //新建一個Email
            Message message = new MimeMessage(session);
            //設置發件人
            message.setFrom(new InternetAddress("bbberr9920@gmail.com"));
            //設置多個收件人
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("bbberr@outlook.com"));
            //設置主题
            message.setSubject("ha");
            //設置文本
            message.setText("test");

            //Email傳送對象
            Transport transport = session.getTransport();
            //設置:伺服器地址、用戶名、密碼
            transport.connect("imap.mail.yahoo.com", "darin10096@yahoo.com.tw", "12yvetet16");
            //發送Email(Email，地址)
            transport.sendMessage(message,  new Address[] {new InternetAddress("bbberr9920@gmail.com")} );
            //關閉連結
            transport.close();

            response.getWriter().print("ok!");

        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

}
