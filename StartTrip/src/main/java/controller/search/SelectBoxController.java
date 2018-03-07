package controller.search;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import model.bean.SearchBean;
import model.dao.SearchDao;

@Controller
public class SelectBoxController {

	@Autowired
	private SearchDao dao;

	@RequestMapping(path = "/SelectBox.controller", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String method(String keyin) {
		List<SearchBean> list =null;
		// System.out.println(keyin);
		if(keyin.getBytes().length==keyin.length()) {
			list= dao.selectByCode(keyin);
		}else {
			list= dao.selectByAirport(keyin);
		}
		
		
		String result = "[";
		Iterator<SearchBean> iterator = list.iterator();
		int i=0;
		while (iterator.hasNext()) {
			if (i != 0) {
				result = result + ",";
			}
			i++;
			SearchBean bean = iterator.next();
			// System.out.println(bean);
			String aircode = bean.getAircode();
			String airport = bean.getAirport();
			String country = bean.getCountry();

			String json = String.format("{'aircode':'%s','airport':'%s','country':'%s'}", aircode, airport, country);
//			System.out.println(json);
			result = result + json;
		}

		result = result + "]";
		return result;
	}

}
