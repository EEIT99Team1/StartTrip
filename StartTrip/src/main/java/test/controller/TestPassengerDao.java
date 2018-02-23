package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.BonushopBean;
import model.bean.BonusorderBean;
import model.bean.CustomerBean;
import model.dao.BonushopDao;
import model.dao.BonusorderDao;
import model.dao.CustomerDao;
import model.dao.FightorderDao;
import model.dao.OrdermanDao;
import model.dao.PassengerDao;
import model.dao.SearchDao;

@Controller
public class TestPassengerDao {	
	@Autowired
	private BonushopDao bonushopDao;
	@RequestMapping(path = { "/bonushopBean.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method1() {
		BonushopBean bean=new BonushopBean();
		bean.setId(1);
		bean.setName("柴犬");
		bean.setBonus(50);
		bean.setMuch(100);
		//select
//		bean=bonushopDao.select(1);
		//insert
		bonushopDao.insert(bean);
		//update
//		bonushopDao.update(bean.getId(), "狼犬", 20, 20000);
		//delete
//		bonushopDao.delete(bean.getId());
		return "test.success";
	}
	
	@Autowired
	private BonusorderDao bonusorderDao;
	@RequestMapping(path = { "/bonusorderDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method2() {
		BonusorderBean bean=new BonusorderBean();
		//select
		bean=bonusorderDao.select(1);
		//insert
//		bean.setEmail("qwe@gmail.com");
//		bean.setId(1);
//		bean.setWmuchs(100);
//		bonusorderDao.insert(bean);
		//update
		//delete
		
		return "test.success";
	}
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(path = { "/customerDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method3() {
		CustomerBean bean=new CustomerBean();
	
		//select
		bean=customerDao.select("qwe@gmail.com");
		//insert
//		bean.setEmail("qwe@gmail.com");
//		bean.setPassword("123456");
//		bean.setFirstname("顏");
//		bean.setLastname("堃");
//		bean.setCountry("台北");
//		bean.setBirthday("2001/8/4");
//		bean.setPhonenumber("0987654321");
//		bean.setBonus(50000);
//		customerDao.insert(bean);
		//update
//		customerDao.update(bean.getEmail(), "741", "堃", 
//				"顏", "台北", "2001/8/4", "123", 2000);
		//delete
		customerDao.delete(bean.getEmail());
		return "test.success";
	}
	@Autowired
	private FightorderDao fightorderDao;
	@RequestMapping(path = { "/fightorderDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method4() {
		return "test.success";
	}
	@Autowired
	private OrdermanDao ordermanDao;
	@RequestMapping(path = { "/ordermanDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method5() {
		return "test.success";
	}
	@Autowired
	private PassengerDao passengerDao;
	@RequestMapping(path = { "/passengerDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method6() {
		return "test.success";
	}
	@Autowired
	private SearchDao searchDao;
	@RequestMapping(path = { "/searchDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method7() {
		return "test.success";
	}
}
