package controller.registration;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

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
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.CustomerBean;
import model.dao.CustomerDao;



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
    	WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
    	CustomerDao dao=context.getBean(CustomerDao.class);
    	//讀取輸入資料
    	String emailcheck = request.getParameter("email");
    	
    	//呼叫驗證碼的暫存
		HttpSession session = request.getSession(); 
		String codeNumbers=(String) session.getAttribute("rand");
		System.out.println(codeNumbers);
		int codeN=Integer.parseInt(codeNumbers);
		System.out.println(codeN);
			
		//判斷是否Email已註冊
		Map<String,String> errorMsg = new HashMap<String,String>();
		request.setAttribute("error",errorMsg);    	
		CustomerBean cb=dao.select(emailcheck);
		if(cb==null){
		errorMsg.put("mailExist", "此Email未註冊，請確認Email或由首頁進行註冊。");
		System.out.println("mailExist = "+dao.select(emailcheck));
		System.out.println("mailcheck.error，沒有註冊");
		String url = "index.jsp";
		request.setAttribute("hasError",true);
		RequestDispatcher targetURL = request.getRequestDispatcher(url);
		targetURL.forward(request, response);
		return;
		}
		
		//比對驗證碼
		Map<String,String> errorCode = new HashMap<String,String>();
		request.setAttribute("errcode",errorCode);
		String codeR = request.getParameter("rand");
		if(codeNumbers.equals(codeR)) {  
			session.removeAttribute("errcode");
			System.out.println("Line76驗證碼correct");
    	}else {
    		errorCode.put("errorC", "驗證碼輸入錯誤！"); 
    		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
			System.out.println("MailServlet.LINe98驗證碼輸入錯誤");
    		return;
    		}
		
		//獲得DB的註冊密碼
		Map<String,String> dbEmail = new HashMap<String,String>();
		request.setAttribute("dbID",dbEmail);
		String forgotpassword=cb.getPassword();
		System.out.println("信件成功寄出！到:"+emailcheck);
		dbEmail.put("dbpsdemail", "信件成功寄出！到:"+emailcheck+"，請登入信箱查收！");
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);	
		
		
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

    	    //獲得註冊會員的名字
    	    String forgotlastname=cb.getLastname();
    	    String forgotfirstmame=cb.getFirstname();
    	    try {

    	        Message message = new MimeMessage(ss);
    	        message.setFrom(new InternetAddress("serviceEEIT99@gmail.com"));
    	        message.setRecipients(Message.RecipientType.TO,
    	                InternetAddress.parse(emailcheck));
    	        message.setSubject("StartTrip密碼找回");
    	        message.setText("親愛的會員"+forgotlastname+" "+forgotfirstmame+" 您好:"+"您的密碼是:"+forgotpassword);

    	        Transport.send(message);
    	        
    	        System.out.println("Email寄出，MailServlet,worked");

    	    } catch (MessagingException e) {
    	        throw new RuntimeException(e);
    	    }
    }

}
