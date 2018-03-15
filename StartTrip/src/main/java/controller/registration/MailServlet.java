package controller.registration;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    
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

    	 Properties props = new Properties();
    	    props.put("mail.smtp.host", "smtp.gmail.com");
    	    props.put("mail.smtp.socketFactory.port", "465");
    	    props.put("mail.smtp.socketFactory.class",
    	            "javax.net.ssl.SSLSocketFactory");
    	    props.put("mail.smtp.auth", "true");
    	    props.put("mail.smtp.port", "465"); 
    	    Session session = Session.getDefaultInstance(props,
    	        new javax.mail.Authenticator() {
    	                            @Override
    	            protected PasswordAuthentication getPasswordAuthentication() {
    	                return new PasswordAuthentication("bbberr9920@gmail.com","lin19891216");
    	            }
    	        });

    	    try {

    	        Message message = new MimeMessage(session);
    	        message.setFrom(new InternetAddress("bbberr9920@gmail.com"));
    	        message.setRecipients(Message.RecipientType.TO,
    	                InternetAddress.parse("bbberr@outlook.com"));
    	        message.setSubject("Testing Subject");
    	        message.setText("Test Mail");

    	        Transport.send(message);

    	        System.out.println("Done");

    	    } catch (MessagingException e) {
    	        throw new RuntimeException(e);
    	    }
    }

}
