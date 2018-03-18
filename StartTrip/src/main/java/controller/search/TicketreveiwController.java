package controller.search;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.FlightorderBean;
import model.bean.search.SearchDataBean;
import model.service.search.FlightorderService;

@Controller
@RequestMapping(path = "/Ticketreveiw.controller")
public class TicketreveiwController {

	@RequestMapping(method = { RequestMethod.POST })
	public 	String ordercheck(
			String gomodel1, String gogodate1, String goarriveddate1, String goflight1,
			String gogotime1, String goflighttime1, String goarrivedtime1, String gocabin1, 
			String gostartplace1,String goarrivedplace1, String goweight1,
			String gomodel2, String gogodate2,String goarriveddate2, String goflight2, 
			String gogotime2, String goflighttime2, String goarrivedtime2,String gocabin2, 
			String gostartplace2, String goarrivedplace2, String goweight2, 
			String backmodel1, String backgodate1, String backarriveddate1,String backflight1, 
			String backgotime1, String backflighttime1, String backarrivedtime1, String backcabin1,
			String backstartplace1, String backarrivedplace1, String backweight1, 
			String backmodel2,String backgodate2, String backarriveddate2, String backflight2, 
			String backgotime2, String backflighttime2,	String backarrivedtime2, String backcabin2, 
			String backstartplace2, String backarrivedplace2,String backweight2,
			String flightprice, HttpSession session) {
		session.removeAttribute("go1");
		session.removeAttribute("go2");
		session.removeAttribute("back1");
		session.removeAttribute("back2");

		System.out.println(flightprice);
		session.setAttribute("flightprice", flightprice);

		SearchDataBean searchData = (SearchDataBean) session.getAttribute("searchData");
		int adult = Integer.parseInt(searchData.getAdult());
		int child = Integer.parseInt(searchData.getChild());

		String gouptime1 = gogodate1 + "T" + gogotime1;
		String godowntime1 = goarriveddate1 + "T" + goarrivedtime1;
		FlightorderBean go1 = new FlightorderBean();
		go1.setStart(gostartplace1);
		go1.setEndstart(goarrivedplace1);
		go1.setUptime(gouptime1);
		go1.setDowntime(godowntime1);
		go1.setAdult(adult);
		go1.setChild(child);
		go1.setFlight(goflight1);
		go1.setFlighttime(goflighttime1);
		go1.setModel(gomodel1);
		go1.setCabin(gocabin1);
		session.setAttribute("go1", go1);
		// System.out.println(go1);

		if (gostartplace2 != null) {

			String gouptime2 = gogodate2 + "T" + gogotime2;
			String godowntime2 = goarriveddate2 + "T" + goarrivedtime2;
			FlightorderBean go2 = new FlightorderBean();
			go2.setStart(gostartplace2);
			go2.setEndstart(goarrivedplace2);
			go2.setUptime(gouptime2);
			go2.setDowntime(godowntime2);
			go2.setAdult(adult);
			go2.setChild(child);
			go2.setFlight(goflight2);
			go2.setFlighttime(goflighttime2);
			go2.setModel(gomodel2);
			go2.setCabin(gocabin2);
			System.out.println(go2);

			session.setAttribute("go2", go2);
		}

		if (backstartplace1 != null) {

			String backuptime1 = backgodate1 + "T" + backgotime1;
			String backdowntime1 = backarriveddate1 + "T" + backarrivedtime1;
			FlightorderBean back1 = new FlightorderBean();
			back1.setStart(backstartplace1);
			back1.setEndstart(backarrivedplace1);
			back1.setUptime(backuptime1);
			back1.setDowntime(backdowntime1);
			back1.setAdult(adult);
			back1.setChild(child);
			back1.setFlight(backflight1);
			back1.setFlighttime(backflighttime1);
			back1.setModel(backmodel1);
			back1.setCabin(backcabin1);
			System.out.println(back1);

			session.setAttribute("back1", back1);
		}

		if (backstartplace2 != null) {
			String backuptime2 = backgodate2 + "T" + backgotime2;
			String backdowntime2 = backarriveddate2 + "T" + backarrivedtime2;
			FlightorderBean back2 = new FlightorderBean();
			back2.setStart(backstartplace2);
			back2.setEndstart(backarrivedplace2);
			back2.setUptime(backuptime2);
			back2.setDowntime(backdowntime2);
			back2.setAdult(adult);
			back2.setChild(child);
			back2.setFlight(backflight2);
			back2.setFlighttime(backflighttime2);
			back2.setModel(backmodel2);
			back2.setCabin(backcabin2);
			System.out.println(back2);

			session.setAttribute("back2", back2);
		}

		return "ticket.success";
	}

}
