package model.service.mail;

import org.springframework.stereotype.Service;

@Service
public class MailService {
	
	
	public static void mallService(String[] args){  
        //設定Email
     MailSenderInfo mailInfo = new MailSenderInfo();   
     mailInfo.setMailServerHost("imap.mail.yahoo.com");   
     mailInfo.setMailServerPort("993");   
     mailInfo.setValidate(true);   
     mailInfo.setUserName("daring10096@yahoo.com.tw");   
     mailInfo.setPassword("12yvette16");//您的邮箱密码   
     mailInfo.setFromAddress("daring10096@yahoo.com.tw");   
     mailInfo.setToAddress("bbberr9920@gmail.com");   
     mailInfo.setSubject("StartTrip忘記密碼重設");//Email標題   
     mailInfo.setContent("密碼重設Test"); //Email內文  
        //这个类主要来发送邮件  
     SimpleMailSender sms = new SimpleMailSender();  
         sms.sendTextMail(mailInfo);//发送文体格式   
         sms.sendHtmlMail(mailInfo);//发送html格式  
   }  
}
