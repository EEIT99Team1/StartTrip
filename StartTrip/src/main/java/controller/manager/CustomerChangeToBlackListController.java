package controller.manager;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.bean.CustomerBean;
import model.dao.CustomerDao;

@Controller
@RequestMapping(path="/CustomerChangeToBlackListController.controller")
public class CustomerChangeToBlackListController {
	
	@Autowired
	private CustomerDao dao;
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(@RequestParam(name="blacklistcheckbox") String chechbox,HttpSession session) {
		
		//測試checkbox取到的值
		System.out.println("chechbox = "+chechbox);//勾選前四個 會印出 chechbox = abc@gmail.com,def@gmail.com,ghi@gmail.com
		//取得被勾選黑名單的checkbox
		String[] checkboxindex = chechbox.split(",");
		System.out.println("checkboxindex = "+checkboxindex);
		for(String s:checkboxindex) {
		System.out.println(s);
		CustomerBean bean = dao.select(s);
		String firstname = bean.getFirstname();
		String lastname = bean.getLastname();
		dao.update(bean.getEmail(), bean.getPassword(), bean.getFirstname(), bean.getLastname(), bean.getCountry(), bean.getBirthday(), bean.getPhonenumber(), bean.getBonus(), true);
		
		session.setAttribute("firstname", firstname);
		session.setAttribute("lastname", lastname);
		}
		List<CustomerBean> customerList = dao.selectAll();
		session.setAttribute("customerList", customerList);
		return "customerManagement";
	}

}
