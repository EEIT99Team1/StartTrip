package controller.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.bean.AirLineBean;
import model.dao.AirLineDao;

@Controller
public class AirLineNameController {
	@Autowired
	private AirLineDao airLineDao;
	
	@RequestMapping(path="/getAirLineName.controller",produces= {"text/plain;charset=UTF-8"})
	@ResponseBody
	public String getAirLineName(String airlLineId) {
		AirLineBean bean=airLineDao.get(airlLineId);
		if(bean==null) {
			System.out.println("airlLineId="+airlLineId);
			return "查無此航空";
		}
		return bean.getName();
	}
}
