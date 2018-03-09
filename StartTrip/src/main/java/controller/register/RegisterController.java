package controller.register;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.CustomerBean;

@Controller
@RequestMapping(path="/Register.controller")
public class RegisterController {
	@RequestMapping(method= {RequestMethod.POST},produces="text/plain;charset=utf-8")
	public String regist(CustomerBean bean) {
		
		System.out.println(bean);
		return null;
	}
}
