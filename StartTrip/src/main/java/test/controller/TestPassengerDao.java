package test.controller;

import java.io.File;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.BonushopBean;
import model.bean.BonusorderBean;
import model.bean.CustomerBean;
import model.bean.FlightorderBean;
import model.bean.OrdermanBean;
import model.bean.PassengerBean;
import model.bean.SearchBean;
import model.dao.BonushopDao;
import model.dao.BonusorderDao;
import model.dao.CustomerDao;
import model.dao.FlightorderDao;
import model.dao.OrdermanDao;
import model.dao.PassengerDao;
import model.dao.SearchDao;
import model.service.search.ConnectionSaber;

@Controller
public class TestPassengerDao {

	@RequestMapping(path = { "/Reports.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String testReports(String selectBy) {
		List list = flightorderDao.selectBy(selectBy);

		System.out.println(list);
		for (Iterator it = list.iterator(); it.hasNext();) {
			Object[] row = (Object[]) it.next();
			System.out.println("start: " + row[0]);
			System.out.println("count: " + row[1]);
		}

		return "test.success";
	}

	@Autowired
	private ConnectionSaber connectionSaber;

	@RequestMapping(path = { "/testConnectionSaber.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String testConnectionSaber() {
		String bst = connectionSaber.createSession();
		// connectionSaber.requestSession(bst);
		connectionSaber.closeSession(bst);

		return "test.success";
	}

	@Autowired
	private BonushopDao bonushopDao;

	@RequestMapping(path = { "/bonushopBean.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method1() {
		BonushopBean bean = new BonushopBean();
		bean.setId(1);
		bean.setName("柴犬");
		bean.setBonus(50);
		bean.setMuch(100);
		// select
		// bean=bonushopDao.select(1);
		// insert
		bonushopDao.insert(bean);
		// update
		// bonushopDao.update(bean.getId(), "狼犬", 20, 20000);
		// delete
		// bonushopDao.delete(bean.getId());
		return "test.success";
	}

	@Autowired
	private BonusorderDao bonusorderDao;

	@RequestMapping(path = { "/bonusorderDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method2() {
		BonusorderBean bean = new BonusorderBean();
		// select
		// bean = bonusorderDao.select(1);
		// insert //先insert Bonushop和Customer在執行
		// bean.setEmail("qwe@gmail.com");
		// bean.setId(1);
		// bean.setWmuchs(100);
		// bonusorderDao.insert(bean);
		// update
		// bonusorderDao.update(1,"qwe@gmail.com",1,10);
		// delete
		// bonusorderDao.delete(1);
		return "test.success";
	}

	@Autowired
	private CustomerDao customerDao;

	@RequestMapping(path = { "/customerDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method3() {
		CustomerBean bean = new CustomerBean();

		// select
		// bean=customerDao.select("qwe@gmail.com");
		// insert
		bean.setEmail("qwe@gmail.com");
		bean.setPassword("123456");
		bean.setFirstname("顏");
		bean.setLastname("堃");
		bean.setCountry("台北");
		bean.setBirthday("2001/8/4");
		bean.setPhonenumber("0987654321");
		bean.setBonus(50000);
		customerDao.insert(bean);
		// update
		// customerDao.update(bean.getEmail(), "741", "堃",
		// "顏", "台北", "2001/8/4", "123", 2000);
		// delete
		// customerDao.delete(bean.getEmail());
		return "test.success";
	}

	@Autowired
	private FlightorderDao flightorderDao;

	@RequestMapping(path = { "/flightorderDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method4() {

		FlightorderBean bean = new FlightorderBean();
		// select
		// bean=customerDao.select("qwe@gmail.com");
		// insert
		// bean.setAdult(3);
		// bean.setChild(2);
		// bean.setDowntime(new java.sql.Date(0));
		// bean.setUptime(new java.sql.Date(214748));
		// bean.setStart("twn");
		// bean.setEndstart("jpa");
		// bean.setFlight("華航");
		// bean.setModel("M5454");
		// bean.setOrderid(1);
		// bean.setWid(1);
		//
		// flightorderDao.insert(bean);
		// update
		// flightorderDao.update(4, "TEP", "NTR", new java.sql.Date(156778),
		// new java.sql.Date(0), 4, 3, "長榮", "BR-132", 1);
		// delete

		// flightorderDao.delete(2);
		return "test.success";
	}

	@Autowired
	private OrdermanDao ordermanDao;

	@RequestMapping(path = { "/ordermanDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method5() {
		OrdermanBean bean = new OrdermanBean();
		// select
		// bean=customerDao.select("qwe@gmail.com");
		// insert
		bean.setEmail("qweret@yahoo.com.tw");
		bean.setStutus(false);

		ordermanDao.insert(bean);
		// update
		// ordermanDao.update("test@yahoo.com", 2, false);
		// delete
		// ordermanDao.delete(1);
		return "test.success";
	}

	@Autowired
	private PassengerDao passengerDao;

	@RequestMapping(path = { "/passengerDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method6() {
		PassengerBean bean = new PassengerBean();
		// select
		// bean=customerDao.select("qwe@gmail.com");
		// insert
		// bean.setExpiry(new java.sql.Date(0));
		// bean.setFirstname("Jeff");
		// bean.setLastname("hsu");
		// bean.setOrderid(1);
		// bean.setPassport("156115641");
		//
		// passengerDao.insert(bean);
		// update
		// passengerDao.update(1, "Jeff", "Jeff", new Date(1919/01/01), "156115646",1);
		// delete
		passengerDao.delete(1);
		return "test.success";
	}

	@Autowired
	private SearchDao searchDao;

	@RequestMapping(path = { "/searchDao.controller" }, method = { RequestMethod.GET, RequestMethod.POST })
	public String method7() {
		SearchBean bean = new SearchBean();
		// select
		// bean=customerDao.select("qwe@gmail.com");
		// insert
		bean.setAircode("TWH");
		bean.setAirport("台北");
		bean.setCountry("台灣");

		searchDao.insert(bean);
		// //update
		// searchDao.update("TWH", "東京", "日本");
		// //delete
		// searchDao.delete("TWH");
		return "test.success";
	}
}
