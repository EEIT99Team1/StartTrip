package controller.search;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.bean.FlightorderBean;
import model.bean.search.SearchDataBean;
import model.service.search.FlightorderService;

@Controller
@RequestMapping(path = "/Ticketreveiw.Controller")
public class TicketreveiwController {
	public String ordercheck(String gomodel1,String gogodate1,String goarriveddate1,String goflight1,
			String gogotime1,String goflighttime1,String goarrivedtime1,String gocabin1,
			String gostartplace1,String goarrivedplace1,String goweight1,
			String backmodel1,String backgodate1,String backarriveddate1,String backflight1,
			String backgotime1,String backflighttime1,String backarrivedtime1,String backcabin1,
			String backstartplace1,String backarrivedplace1,String backweight1,
			String gomodel2,String gogodate2,String goarriveddate2,String goflight2,
			String gogotime2,String goflighttime2,String goarrivedtime2,String gocabin2,
			String gostartplace2,String goarrivedplace2,String goweight2,
			String backmodel2,String backgodate2,String backarriveddate2,String backflight2,
			String backgotime2,String backflighttime2,String backarrivedtime2,String backcabin2,
			String backstartplace2,String backarrivedplace2,String backweight2) {		
		
		FlightorderBean go1=new FlightorderBean();

		
		return null;
	}
	

}
