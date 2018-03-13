package controller.customer;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.CustomerBean;
import model.dao.CustomerDao;

@Controller
@RequestMapping(path="/Register.controller")
public class RegisterController {
	
	@Autowired
	private CustomerDao dao;
	
	@RequestMapping(method= {RequestMethod.POST},produces="text/plain;charset=utf-8")
	public String regist(CustomerBean bean , Model model) {
		
		Map<String,String> errorMsg = new HashMap<String,String>();
		Map<String,String> successMsg = new HashMap<String,String>(); 
		
		model.addAttribute("error",errorMsg);
		model.addAttribute("success",successMsg);
		
			if(bean.getEmail()==null || bean.getEmail().trim().length()==0) {
				errorMsg.put("errorIDEmpty", "帳號欄必須輸入");
			}
			if(bean.getPassword()==null || bean.getPassword().trim().length()==0) {
				errorMsg.put("errorPasswordEmpty", "密碼欄必須輸入");
			}
			if(bean.getLastname()==null || bean.getLastname().trim().length()==0) {
				errorMsg.put("errorLastname", "姓氏欄必須輸入");
			}else if  (bean.getLastname().trim().length() < 2) {
				errorMsg.put("lastnameerr", "姓氏欄字數不足");
			}
			if(bean.getFirstname()==null || bean.getFirstname().trim().length()==0) {
				errorMsg.put("errorFirstname", "名字欄必須輸入");
			}else if (bean.getFirstname().trim().length() < 2) {
				errorMsg.put("firstnameerr", "名字欄字數不足");
			}
			if(bean.getCountry()==null || bean.getCountry().trim().length()==0) {
				errorMsg.put("errorCountry", "國家欄必須輸入");
			}
			if(bean.getBirthday()==null || bean.getBirthday().trim().length()==0) {
				errorMsg.put("errorBirthday", "生日欄必須輸入");
			}
			if(bean.getPhonenumber()==null || bean.getPhonenumber().trim().length()==0) {
				errorMsg.put("errorPhonenumber", "手機號碼欄必須輸入");
			}else if (bean.getPhonenumber().trim().length() < 10) {
				errorMsg.put("phonenumbererr", "手機號碼格式不正確");
			}
			
			if(!errorMsg.isEmpty() && errorMsg!=null) {
				System.out.println("失敗");
				return "register.error";
			}
		//判斷是否帳號已存在
		if(!(dao.select(bean.getEmail())==null)){
			errorMsg.put("errorIDDup", "此帳號已存在，請換一個帳號");
			System.out.println("errorIDDup = "+dao.select(bean.getEmail()));
		}else {
			successMsg.put("successIDDup", "此帳號可使用");
			System.out.println("successIDDup ="+dao.select(bean.getEmail()));
		}
		
		if(!errorMsg.isEmpty() && errorMsg!=null) {
			System.out.println("失敗");
			return "register.error";
		}else{
			successMsg.put("InsertOK", "恭喜您註冊成功。");
			bean.setBonus(0);
			dao.insert(bean);
		}
		System.out.println("成功");
		return "register.success";
	}
}
