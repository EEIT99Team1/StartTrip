package controller.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(path="/CustomerChangeToBlackListController")
public class CustomerChangeToBlackListController {
	
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(@RequestParam(name="blacklistcheckbox") String chechbox) {
		
		
		return "";
	}

}
