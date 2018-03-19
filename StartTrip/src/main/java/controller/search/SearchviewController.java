package controller.search;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.CustomerBean;
import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.bean.PassengerBean;
import model.dao.CustomerDao;
import model.service.search.FlightorderService;
import model.service.search.OrdermanService;
import model.service.search.PassengerService;

@Controller
@RequestMapping(path = "/Searchview.controller")
public class SearchviewController {

	@Autowired
	private PassengerService passengerService;
	@Autowired
	private OrdermanService ordermanService;
	@Autowired
	private FlightorderService flightorderService;
	@Autowired
	private CustomerDao customerDao;

	@RequestMapping( method = { RequestMethod.GET })
	public String view(HttpSession session,Model model) {
	
		OrdermanBean obean = (OrdermanBean) session.getAttribute("obean");
		
		FlightorderBean go1 = (FlightorderBean) session.getAttribute("go1");
		FlightorderBean go2 = (FlightorderBean) session.getAttribute("go2");
		FlightorderBean back1 = (FlightorderBean) session.getAttribute("back1");
		FlightorderBean back2 = (FlightorderBean) session.getAttribute("back2");
		
		PassengerBean abean1 = (PassengerBean) session.getAttribute("abean1");
		PassengerBean abean2 = (PassengerBean) session.getAttribute("abean2");
		PassengerBean abean3 = (PassengerBean) session.getAttribute("abean3");
		PassengerBean abean4 = (PassengerBean) session.getAttribute("abean4");
		
		PassengerBean cbean1 = (PassengerBean) session.getAttribute("cbean1");
		PassengerBean cbean2 = (PassengerBean) session.getAttribute("cbean2");
		PassengerBean cbean3 = (PassengerBean) session.getAttribute("cbean3");
		PassengerBean cbean4 = (PassengerBean) session.getAttribute("cbean4");
		 
		OrdermanBean oresult = ordermanService.insert(obean);

		int orderid = oresult.getOrderid();
		 
		go1.setOrderid(orderid);
		 
		go1 = flightorderService.insert(go1);
		 
		if(go2!=null) {
			go2.setOrderid(orderid);
			go2 = flightorderService.insert(go2);
		}
		if(back1!=null) {
			back1.setOrderid(orderid);
			back1 = flightorderService.insert(back1);
		}
		if(back2!=null) {
			back2.setOrderid(orderid);
			back2 = flightorderService.insert(back2);
		}

		 abean1.setOrderid(orderid);
		 passengerService.insert(abean1);
		 if(abean2!=null) {
			 abean2.setOrderid(orderid);
			 passengerService.insert(abean2);
			 
			 if(abean3!=null) {
				 abean3.setOrderid(orderid);
				 passengerService.insert(abean3);
				 
				 if(abean4!=null) {
					 abean4.setOrderid(orderid);
					 passengerService.insert(abean4);
					 
				 }
			 }
		 }
		 if(cbean1!=null) {
			 cbean1.setOrderid(orderid);
			 passengerService.insert(cbean1);
			 if(cbean2!=null) {
				 cbean2.setOrderid(orderid);
				 passengerService.insert(cbean2);
				 
				 if(cbean3!=null) {
					 cbean3.setOrderid(orderid);
					 passengerService.insert(cbean3);
					 
					 if(cbean4!=null) {
						 cbean4.setOrderid(orderid);
						 passengerService.insert(cbean4);
						 
					 }
				 }
			 }
		 }
		 
		 CustomerBean cbean=(CustomerBean)session.getAttribute("LoginOK");
		 System.out.println("cbean"+cbean);
		 if(cbean!=null) {
			 Integer flightprice= Integer.parseInt((String)session.getAttribute("flightprice"));
			 System.out.println("cbean"+flightprice);
			 cbean.setBonus(cbean.getBonus()+flightprice);
			 System.out.println("Blacklist===="+cbean.getBlacklist());
			 customerDao.update(cbean.getEmail(), cbean.getPassword(), cbean.getFirstname(), cbean.getFirstname(), 
					 cbean.getCountry(), cbean.getBirthday(), cbean.getPhonenumber(), cbean.getBonus(), cbean.getBlacklist());
			 session.setAttribute("LoginOK", cbean);
			 session.setAttribute("customerBean", cbean);
		 }
		 System.out.println("success");
		 return "view.success";

	}
}
