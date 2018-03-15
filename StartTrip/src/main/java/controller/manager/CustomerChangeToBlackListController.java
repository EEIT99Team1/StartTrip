package controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(path="/CustomerChangeToBlackListController.controller")
public class CustomerChangeToBlackListController {
	
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(@RequestParam(name="blacklistcheckbox") String chechbox) {
		
		//測試checkbox取到的值
		System.out.println("chechbox = "+chechbox);//勾選前四個 會印出 chechbox = 1,2,3,4
		
		//取得被勾選黑名單的checkbox
		
		return "customerManagement";
	}

}
