package controller.search;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.bean.PassengerBean;

@Controller
public class SearchenterController {

	// passenger
	@RequestMapping(path = "/Searchenter.controller", method = { RequestMethod.GET })
	public String order(PassengerBean pbean, OrdermanBean obean, 
			Model model1,HttpSession session, FlightorderBean fbean) {

		obean.setStutus(false);
		System.out.println(pbean);
		System.out.println(obean);

		Map<String, String> errmsg = new HashMap<>();
		model1.addAttribute("error", errmsg);

		if (pbean.getFirstname() == null || pbean.getFirstname().trim().length() == 0) {
			errmsg.put("errfirstname", "乘客姓氏不可空白");
		}
		if (pbean.getLastname() == null || pbean.getLastname().trim().length() == 0) {
			errmsg.put("errlastname", "乘客名字不可空白");
		}
//		if (pbean.getPhone() == null|| pbean.getPhone().trim().length() == 0) {
//		 errmsg.put("errphone", "聯絡電話不可空白");
//		 }
//		if(fbean.getChild()>=1) {
//			if (pbean.getBrithday() == null || pbean.getBrithday().trim().length() == 0) {
//				errmsg.put("errbrithday", "生日不可空白");
//			}
//		}
		if (obean.getEmail() == null || obean.getEmail().trim().length() == 0) {
			errmsg.put("erremail", "訂購人電子郵件不可空白");
		}
		
//		if( bean.get Firstname()==null ||  bean.get Firstname().trim().length() == 0) {
//		errmsg.put("err firstname", "聯絡人姓氏不可空白");
//		}
//		if ( bean.get Lastname() == null || pbean.get Lastname().trim().length() == 0) {
//			errmsg.put("err lastname", "聯絡人名字不可空白");
		
		if (errmsg.isEmpty()) {
			System.out.println("success");
			// passenger
			session.setAttribute("pbean", pbean);
			// orderman
			session.setAttribute("obean", obean);
			
			return "order.success";
			// return "order.error";
		}

		System.out.println("failed");

		return "order.error";
	}
}
