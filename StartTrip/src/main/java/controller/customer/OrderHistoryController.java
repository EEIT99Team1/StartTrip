package controller.customer;

import java.util.Iterator;
import java.util.List;

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
		List<OrdermanBean> orderbean= orderdao.selectByEmail(email);
		Iterator<OrdermanBean> orderid = orderbean.iterator();
		System.out.println(orderid);
		//使用當前登入者的訂單編號去搜尋訂單內容
		List<FlightorderBean> flightbean = null;
		int i=0;
		while(orderid.hasNext()) {
			OrdermanBean odbean = orderid.next();
			if(i==0) {
			    flightbean=flightdao.selectByOrderid(odbean.getOrderid());
			}else {
				flightbean.addAll(flightdao.selectByOrderid(odbean.getOrderid()));
			}
			i++;
		}
		model.addAttribute("flightbean",flightbean);
		return "orderhistory";	
	}
}
