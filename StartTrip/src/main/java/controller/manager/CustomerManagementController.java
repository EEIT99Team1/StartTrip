package controller.manager;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.CustomerBean;
import model.dao.CustomerDao;

@Controller
@RequestMapping(path="/CustomerManagementController.controller")
public class CustomerManagementController {
	
	@Autowired
	private CustomerDao dao;
	
	@RequestMapping(method= {RequestMethod.GET}, produces="text/plain;charset=utf-8")
	public String method(HttpSession session) {
		//取的所有會員資料
		List<CustomerBean> customerList = dao.selectAll();
//		System.out.println("customerList = "+ customerList);
		session.setAttribute("customerList", customerList);
		
		return "customerManagement";
	}
}
