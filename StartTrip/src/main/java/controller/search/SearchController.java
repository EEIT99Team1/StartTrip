package controller.search;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.search.SearchDataBean;
import model.service.search.ConnectionSaber;

@Controller
public class SearchController {
	@Autowired
	private ConnectionSaber connectionSaber;
	@Autowired
	private HttpSession session;
	
	@RequestMapping(path="/FlightGet.controller",method= {RequestMethod.GET})
	public String search(SearchDataBean searchData,Model model) {
		System.out.println("goplace = "+searchData.getGoplace());
		System.out.println("endplace = "+searchData.getEndplace());
		System.out.println("way = "+searchData.getWay());
		System.out.println("gotime = "+searchData.getGotime());
		System.out.println("backtime = "+searchData.getBacktime());
		System.out.println("adult = "+searchData.getAdult());
		System.out.println("child = "+searchData.getChild());
		System.out.println("cabin = "+searchData.getCabin());
		
		String bst=connectionSaber.createSession();
		System.out.println(bst);
		String responseXml=connectionSaber.requestSession(bst,searchData);
		connectionSaber.closeSession(bst);
		session.setAttribute("searchData", searchData);
		session.setAttribute("responseXml", "'"+responseXml+"'");
		
	
		
		
		return "select";
	}
}
