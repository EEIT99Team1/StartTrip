package controller.search;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.bean.OrdermanBean;

@Controller
public class ForwordToHouseController {
	@RequestMapping(path="/ForwordToHouse.controller",method=RequestMethod.GET)
	public String forword(HttpSession session,Model model) {
		String hcountry="台灣";
		String hplace="台北";		
		String hdate;
		String hphone;
		String hname;


		
		
		
		FlightorderBean go2=(FlightorderBean)session.getAttribute("go2");
		FlightorderBean go1=(FlightorderBean)session.getAttribute("go1");
		if(go2==null) {
			hdate=go1.getDowntime();
		}else {
			hdate=go2.getDowntime();
		}
		
		
		OrdermanBean obean=(OrdermanBean)session.getAttribute("obean");
		hphone=obean.getEphone();
		hname=obean.getElastname()+obean.getEfirstname();

		System.out.println(hcountry);
		System.out.println(hplace);
		hdate=hdate.replaceAll("-","/");
		System.out.println(hdate.split("T")[0]);
		System.out.println(hphone);
		System.out.println(hname);
		
		model.addAttribute("hcountry",hcountry);
		model.addAttribute("hplace",hplace);
		model.addAttribute("hdate",hdate.split("T")[0]);
		model.addAttribute("hphone",hphone);
		model.addAttribute("hname",hname);
		
		return "forwordToHouse";
	}
}
