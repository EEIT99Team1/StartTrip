package controller.search;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.bean.PassengerBean;
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

	@RequestMapping( method = { RequestMethod.GET })
	public String view(HttpSession session,Model model) {
	
		OrdermanBean obean = (OrdermanBean) session.getAttribute("obean");
		
		FlightorderBean go1 = (FlightorderBean) session.getAttribute("go1");
		FlightorderBean go2 = (FlightorderBean) session.getAttribute("go2");
		FlightorderBean back1 = (FlightorderBean) session.getAttribute("back1");
		FlightorderBean back2 = (FlightorderBean) session.getAttribute("back2");
		
		PassengerBean pbean = (PassengerBean) session.getAttribute("pbean");
		 
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

		 pbean.setOrderid(orderid);
		 PassengerBean presult = passengerService.insert(pbean);

		 
		 System.out.println("success");
		 return "view.success";

	}
}
