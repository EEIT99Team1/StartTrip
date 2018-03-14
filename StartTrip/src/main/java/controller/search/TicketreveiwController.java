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
	public String ordercheck(SearchDataBean searchData, FlightorderBean fbean,
			HttpSession session, Model model) {		
		
		
		return null;
	}
	

}
