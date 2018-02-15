package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.Passenger;
import model.dao.PassengerDao;

@Controller
public class TestPassengerDao {
	@Autowired
	private PassengerDao dao;
	@RequestMapping(path = { "/passenger.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method() {
		Passenger p=new Passenger();
		System.out.println(p.getWid());
		p.setWid(2);
		System.out.println(p.getWid());
		p.setExpiry(new java.sql.Date(0));
		p.setFirstname("Jeff");
		p.setLastname("Gun");
		p.setOrderid(1);
		p.setPassport("123456789");
		dao.insert(p);
		
		
		System.out.println(p.getWid());
		return "test.success";
	}
}
