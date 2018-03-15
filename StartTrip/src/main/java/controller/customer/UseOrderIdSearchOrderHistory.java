package controller.customer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.dao.FlightorderDao;

@Controller
@RequestMapping(path="/UseOrderIdSearchOrderHistory.controller")
public class UseOrderIdSearchOrderHistory {

	@Autowired
	private FlightorderDao flightdao;
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(HttpSession session,String choice) {
		List<FlightorderBean> flightbean = null;
		Integer id = Integer.parseInt(choice);
		flightbean = flightdao.selectByOrderid(id);
		System.out.println("flightbean = "+flightbean);
		session.setAttribute("flightbean2", flightbean);
		session.setAttribute("choiceid", id);
		
		return "orderhistory2";
	}
}
