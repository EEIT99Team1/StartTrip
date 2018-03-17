package controller.manager;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.ManagerBean;
import model.dao.ManagerDao;

@Controller
@RequestMapping(path="/LoginManager.controller")
public class LoginManagerController {
	
	@Autowired
	private ManagerDao dao;
	
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(HttpSession session,String username,String password) {
		
		ManagerBean bean = dao.select(username);
		System.out.println("Managerbean = "+bean);
		String password1 = bean.getPassword();
		System.out.println("Managerpassword1 = "+password1);
		System.out.println("password ="+password);
		Map<String,String> errorMsg = new HashMap<String,String>();
		Map<String,String> successMsg = new HashMap<String,String>();
		session.setAttribute("errorMsg", errorMsg);
		session.setAttribute("successMsg", successMsg);
		if(!password1.equals(password)) {
			errorMsg.put("erroridorpassword", "帳號或密碼錯誤");
		}else {
			successMsg.put("welcomeManager", "管理員歡迎您");
		}
		return "test.success";
	}
}
