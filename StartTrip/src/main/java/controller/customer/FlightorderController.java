package controller.customer;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.dao.FlightorderDao;

@Controller
@RequestMapping(path="/Flightorder.controller")
public class FlightorderController {
	
	@Autowired
	private FlightorderDao flightdao;
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String forder(HttpSession session, Model model,String selectBy) {
		

		System.out.println(selectBy);
		//使用當前登入者的start去搜尋機票訂單編號(一個start可能有多筆訂單，所以在DAO裡用List+HQL語法做select方法，以便使用。
		List<Object[]> flightbean=flightdao.selectBy(selectBy);
		
		session.setAttribute("forder",flightbean);
		
		return "flightordercount";
		}
		
}

