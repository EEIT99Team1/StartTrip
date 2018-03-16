package controller.search;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.bean.OrdermanBean;

@Controller
public class ForwordToHouseController {
	@RequestMapping(path="/ForwordToHouse.controller",method=RequestMethod.GET)
	public String forword(HttpSession session) {
		String hcountry="日本";
		String hplace="東京";		
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
		System.out.println(hdate);
		System.out.println(hphone);
		System.out.println(hname);
		
		session.setAttribute("hcountry",hcountry);
		session.setAttribute("hplace",hplace);
		session.setAttribute("hdate",hdate);
		session.setAttribute("hphone",hphone);
		session.setAttribute("hname",hname);
		
		return "forwordToHouse";
	}
}
