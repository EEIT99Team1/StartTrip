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
@RequestMapping(path="/CustomerInformationAndUpdate.controller")
public class CustomerInformationAndUpdate {
	
	@Autowired
	private CustomerDao dao;
	
	@RequestMapping(method= {RequestMethod.POST},produces="text/plain;charset=utf-8")
	public String Update(CustomerBean bean,Model model) {
		
		Map<String,String> errorMsg= new HashMap<String,String>();
		Map<String,String> successMsg = new HashMap<String,String>();
		
		model.addAttribute("errorMsg",errorMsg);
		model.addAttribute("successMsg",successMsg);
		
		if(bean.getPassword()==null || bean.getPassword().trim().length()==0) {
			errorMsg.put("errorPasswordEmpty", "密碼欄必須輸入");
		}
		if(bean.getLastname()==null || bean.getLastname().trim().length()==0) {
			errorMsg.put("errorLastname", "姓氏欄必須輸入");
		}
		if(bean.getFirstname()==null || bean.getFirstname().trim().length()==0) {
			errorMsg.put("errorFirstname", "名字欄必須輸入");
		}
		if(bean.getCountry()==null || bean.getCountry().trim().length()==0) {
			errorMsg.put("errorCountry", "國家欄必須輸入");
		}
		if(bean.getBirthday()==null || bean.getBirthday().trim().length()==0) {
			errorMsg.put("errorBirthday", "生日欄必須輸入");
		}
		if(bean.getPhonenumber()==null || bean.getPhonenumber().trim().length()==0) {
			errorMsg.put("errorPhonenumber", "手機號碼欄必須輸入");
		}
		
		if(!errorMsg.isEmpty() && errorMsg!=null) {
			System.out.println("失敗");
			return "customerupdate.error";
		}
				if(!errorMsg.isEmpty() && errorMsg!=null) {
					System.out.println("更改失敗");
					return "customerupdate.error";
				
				}else{
					successMsg.put("updateOK", "恭喜您更改成功。");
					bean.setBonus(0);
					dao.update(bean.getEmail(),bean.getPassword(),bean.getFirstname(),
							bean.getLastname(),bean.getCountry(),bean.getBirthday(),bean.getPhonenumber(),bean.getBonus(),bean.getBlacklist());
				}
				
				System.out.println("更改成功");
				return "customerupdate.success";
	}
}
