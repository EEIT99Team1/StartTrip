package controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginManagerController {

	@RequestMapping(path="/LoginManager.controller")
	public String method(String username,String password) {
		System.out.println(username+"\t"+password);
		
		
		return "test.success";
	}
}
