package controller.search;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.OrdermanBean;
import model.bean.PassengerBean;
import model.service.search.OrdermanService;
import model.service.search.PassengerService;

@Controller
@RequestMapping(path = "/Searchview.controller")
public class SearchviewController {

	@Autowired
	private PassengerService passengerService;
	@Autowired
	private OrdermanService ordermanService;

	@RequestMapping( method = { RequestMethod.GET })
	public String view(PassengerBean pbean, OrdermanBean obean,HttpSession session,
					Model model) {
	
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
		String passport = (String) session.getAttribute("passport");
		String email = (String) session.getAttribute("email");
		
		System.out.println("firstname1="+session.getAttribute("firstname"));
		System.out.println("lastname1="+lastname);
		System.out.println("passport1="+passport);
		System.out.println("email1="+email);
		
		pbean.setFirstname(firstname);
		pbean.setLastname(lastname);
		pbean.setPassport(passport);
//		pbean.setExpiry(expiry);
		obean.setStutus(false);
		obean.setEmail(email);

		 PassengerBean presult = passengerService.insert(pbean);

			 model.addAttribute("insert", presult);
		 
		 OrdermanBean oresult = ordermanService.insert(obean);
		
		 model.addAttribute("insert", oresult);
		 
		 
		 System.out.println("success");
		 return "view.success";

	}
}
