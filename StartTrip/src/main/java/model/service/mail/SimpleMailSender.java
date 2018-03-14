package model.service.mail;

import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session; 
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


/**
 * 簡單Email(不帶附件的Email)發送器
 */
public class SimpleMailSender {
	/**
	 * 以文本格式發送Email
	 * 
	 * @param mailInfo
	 *            待發送的Email信息
	 */
	public boolean sendTextMail(MailSenderInfo mailInfo) {
		// 判對是否需要身分認證
		MyAuthenticator authenticator = null;
		Properties pro = mailInfo.getProperties();
		if (mailInfo.isValidate()) {
			// 如果需要身份認證，則創建一個密碼驗證器
			authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
		}
		// 根據Email會話屬性和密碼驗證器構造一個發送Email的session
		Session sendMailSession = Session.getDefaultInstance(pro, authenticator);
		try {
			// 根据session創建一個Email信息
			Message mailMessage = new MimeMessage(sendMailSession);
			// 創建Email發送方地址
			Address from = new InternetAddress(mailInfo.getFromAddress());
			// 設置Email消息的發送方
			mailMessage.setFrom(from);
			// 創建Email的接收方地指，並設置到Email消息中
			Address to = new InternetAddress(mailInfo.getToAddress());
			mailMessage.setRecipient(Message.RecipientType.TO, to);
			// 設置Email消息的主題
			mailMessage.setSubject(mailInfo.getSubject());
			// 設置Email消息發送的時間
			mailMessage.setSentDate(new Date());
			// 設置Email消息的主要内容
			String mailContent = mailInfo.getContent();
			mailMessage.setText(mailContent);
			// 發送Email
			Transport.send(mailMessage);
			return true;
		} catch (MessagingException ex) {
			ex.printStackTrace();
		}
	
		return false;
	}

	/**
	 * 以HTML格式發送Email
	 * 
	 * @param mailInfo
	 *            待發送的Email信息
	 */
	public boolean sendHtmlMail(MailSenderInfo mailInfo) {
		// 判断是否需要身份認證
		MyAuthenticator authenticator = null;
		Properties pro = mailInfo.getProperties();
		// 如果需要身份認證，則創建一個密碼驗證器
		if (mailInfo.isValidate()) {
			authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
		}
		// 根據Email會話屬性和密碼驗證器建造一個發送Email的session
		Session sendMailSession = Session.getDefaultInstance(pro, authenticator);
		try {
			// 根據session創建一個Email消息
			Message mailMessage = new MimeMessage(sendMailSession);
			// 創建Email發送方地址
			Address from = new InternetAddress(mailInfo.getFromAddress());
			// 設置Email消息的發送者
			mailMessage.setFrom(from);
			// 創建Email的接收方地址，並設置到Email消息中
			Address to = new InternetAddress(mailInfo.getToAddress());
			// Message.RecipientType.TO属性表示接收者的類型為TO
			mailMessage.setRecipient(Message.RecipientType.TO, to);
			// 設置Email消息的主题
			mailMessage.setSubject(mailInfo.getSubject());
			// 設置Email消息發送的時間
			mailMessage.setSentDate(new Date());
			// MiniMultipart是一個容器類，包含MimeBodyPart類型的對象
			Multipart mainPart = new MimeMultipart();
			// 創建一个包含HTML内容的MimeBodyPart
			BodyPart html = new MimeBodyPart();
			// 設置HTML内容
			html.setContent(mailInfo.getContent(), "text/html; charset=utf-8");
			mainPart.addBodyPart(html);
			// 將MiniMultipart對象設置為Email内容
			mailMessage.setContent(mainPart);
			// 發送Email
			Transport.send(mailMessage);
			return true;
		} catch (MessagingException ex) {
			ex.printStackTrace();
		}
		return false;
	}
	
}

