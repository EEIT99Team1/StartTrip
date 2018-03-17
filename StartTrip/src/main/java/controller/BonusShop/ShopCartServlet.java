package controller.BonusShop;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import model.bean.CustomerBean;
import model.dao.CustomerDao;
//讀取的路徑(控管)
@WebServlet("/ShopCartServlet")
public class ShopCartServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//找到Spring控管的容器
		WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
		//轉成UTF-8
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
//		//錯誤訊息的建立
//		Map<String, String> erroeMsgMap = new HashMap<String, String>();
//		Map<String, String> successMsgMap = new HashMap<String, String>();
//		//準備EL的連接
//		//EL要用.就是代表有額外塞入別的訊息
//		session.setAttribute("errorMsgKey", erroeMsgMap);
//		session.setAttribute("successMsgKey", successMsgMap);
		
		
		//連接另一個頁面的setAttribute的變數LohinOK
		CustomerBean mb = (CustomerBean) session.getAttribute("LoginOK");
		//如果沒有登入，返回當前頁面(target)
		//判斷是否有login
		if(mb == null) {
//			session.setAttribute("nowbonus", "11");//測試用
			String target = (String) session.getAttribute("target");
			RequestDispatcher rd = req.getRequestDispatcher("/page/bonusshop/BonusShop.jsp");
			rd.forward(req, resp);
			return;
		}
		//讀取會員的bonus
		Integer bonus= mb.getBonus();
		session.setAttribute("nowbonus", bonus);
//		System.out.println(bonus);
		//讀取總total
		String all = req.getParameter("allbonus");
//		System.out.println(all);		
		Integer total = Integer.parseInt(all);
		
		CustomerDao cdao = wac.getBean(CustomerDao.class);
		
		//判斷會員紅利夠不夠
		if(bonus>=total) {
			Integer allbonus = bonus-total;
			cdao.update(mb.getEmail(),mb.getPassword(), mb.getFirstname(), mb.getLastname(), mb.getCountry(),mb.getBirthday(), mb.getPhonenumber(),allbonus,mb.getBlacklist());
			RequestDispatcher rd = req.getRequestDispatcher("/page/bonusshop/BonusShop.jsp");
			rd.forward(req, resp);
			return;
		}else {
			//執行後返回頁面
			RequestDispatcher rd = req.getRequestDispatcher("/page/bonusshop/BonusShop.jsp");
			rd.forward(req, resp);
			return;
		}		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
