package controller.BonusShop;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.bean.BonushopBean;
import model.bean.BonusorderBean;
import model.bean.CustomerBean;
import model.dao.BonushopDao;
import model.dao.BonusorderDao;

@Controller
@RequestMapping(path="/BonusShopOrderHistory.controller")
public class BonusShopOrderHistory {
	
	@Autowired
	private BonusorderDao bodao;
	
	@Autowired
	private BonushopDao bsdao;
	
	@RequestMapping(method= {RequestMethod.GET},produces="text/plain;charset=utf-8")
	public String method(HttpSession session, Model model) {
		//取得使用者email。
		CustomerBean customerbean = (CustomerBean)session.getAttribute("customerBean");
		String email = customerbean.getEmail();
		System.out.println("email ="+email);
		//用使用者eamil去查詢該使用者訂單ID
		List<BonusorderBean> orderbean = bodao.selectByemail(email);
		System.out.println("orderbean = "+orderbean);
		Iterator<BonusorderBean> orderbeaniterator= orderbean.iterator();
		System.out.println("orderbeaniterator ="+ orderbeaniterator);
		
		//用id去搜尋此id屬於哪個紅利商品
		//用來裝商品資訊
		List<BonushopBean> bonushopBean =null;
		BonusorderBean bobean=null;
		int i = 0;
		while(orderbeaniterator.hasNext()) {
			bobean= orderbeaniterator.next();
			System.out.println("bobean ="+bobean);
			if(i==0) {
				bonushopBean =bsdao.selectById(bobean.getId());
				System.out.println("bonushopBean = "+bonushopBean);
			}else {
				bonushopBean.addAll(bsdao.selectById(bobean.getId()));
			}
			i++;
		}

		session.setAttribute("orderbean", orderbean);
		session.setAttribute("bonushopBean", bonushopBean);
		return "bonusorderhistory";
		}
}
