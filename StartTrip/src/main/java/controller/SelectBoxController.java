package controller;

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
public class SelectBoxController{

	@Autowired
	private SearchDao dao;
	
	@RequestMapping(path="/SelectBox.controller",method=RequestMethod.GET)
	@ResponseBody
	public String method(String keyin) {
		System.out.println(keyin);
		
		List<SearchBean> list=dao.selectByCode(keyin);
		Iterator<SearchBean> iterator =  list.iterator();
		while(iterator.hasNext()) {
			SearchBean user = iterator.next();
			System.out.println(user);
		}
		return keyin;
	}

}
