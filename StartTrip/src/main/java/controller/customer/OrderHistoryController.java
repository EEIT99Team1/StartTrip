package controller.customer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.CustomerBean;
import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.dao.FlightorderDao;
import model.dao.OrdermanDao;

@Controller
@RequestMapping(path="/OrderHistoryController.controller")
public class OrderHistoryController {
	
	@Autowired
	private OrdermanDao orderdao;
	
	@Autowired
	private FlightorderDao flightdao;

	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(HttpSession session,Model model) {
		
		
		//取得當前登入者的Eamil
		CustomerBean bean = (CustomerBean) session.getAttribute("customerBean");
		System.out.println(bean);
		String email = bean.getEmail();
		//使用當前登入者的Email去搜尋訂單編號
		OrdermanBean orderbean= orderdao.select(email);
		Integer orderid = orderbean.getOrderid();
		System.out.println(orderid);
		//使用當前登入者的訂單編號去搜尋訂單內容
		FlightorderBean flightbean = flightdao.select(orderid);
		
		model.addAttribute("orderid", flightbean.getOrderid());
		model.addAttribute("start", flightbean.getStart());
		model.addAttribute("endstart", flightbean.getEndstart());
		model.addAttribute("uptime", flightbean.getUptime());
		model.addAttribute("downtime", flightbean.getDowntime());
		model.addAttribute("adult", flightbean.getAdult());
		model.addAttribute("child", flightbean.getChild());
		model.addAttribute("flight", flightbean.getFlight());
		model.addAttribute("model", flightbean.getModel());
		
		
		return "orderhistory";	
	}
}
