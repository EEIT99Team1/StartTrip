package controller.registration;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerServiceMail")
public class CServiceMailServlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	 public CServiceMailServlet() {}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//讀取輸入資料
    	String csEmail = request.getParameter("csEmailinput");
    	String csContent = request.getParameter("csContentinput");
    	String ckCustomer=csEmail+csContent;
    	
    	//客訴編號-日期+隨機6個英數大小寫
    	String s1="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    	s1+=s1.toLowerCase();
    	String s2="0123456789";
    	s1+=s2;
        StringBuilder sb=new StringBuilder(6);//長度
        for(int i=0;i<6;i++) {
          	sb.append(s1.charAt(new Random().nextInt(s1.length())));
            }
        System.out.println("隨機英數組合sb="+sb);
        Date date = new Date();//目前時間
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");//設定日期格式
        String dateString = sdf.format(date);//進行轉換,轉成String
        System.out.println("今天日期:"+dateString);
        String csCode=dateString+sb;
        System.out.println("客訴編號="+csCode);
    	
        //通知客戶已寄出
		Map<String,String> sendEmail = new HashMap<String,String>();
		request.setAttribute("send",sendEmail);
		if (ckCustomer!=null) {
			sendEmail.put("mailsend", "非常感謝您的支持！客服人員將會盡快給您答覆！");
			RequestDispatcher rdis = request.getRequestDispatcher("/index.jsp");
			rdis.forward(request, response);
		}
        
    	//Email
    	Properties props = new Properties();
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.socketFactory.port", "465");
	    props.put("mail.smtp.socketFactory.class",
	            "javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "465"); 
	    Session ss = Session.getDefaultInstance(props,
	        new javax.mail.Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("serviceEEIT99@gmail.com","eeit99eeit99");
	            }
	        });
	    try {
	        Message message = new MimeMessage(ss);
	        message.setFrom(new InternetAddress("serviceEEIT99@gmail.com"));//需要Email給顧客從網站寄信
	        message.setRecipients(Message.RecipientType.TO,
	                InternetAddress.parse("serviceEEIT99@gmail.com"));//從網站寄出去，是客服信箱
	        message.setSubject("StartTrip客服編號:"+csCode);
	        message.setText("來自"+csEmail+"!內容:"+csContent);
	        Transport.send(message);
	        
	        System.out.println("web端的客人"+csEmail+"有疑問的內容是："+csContent+"。CServiceMailServlet:worked");
	    } catch (MessagingException e) {
	        throw new RuntimeException(e);
	    }
	}
	
}
