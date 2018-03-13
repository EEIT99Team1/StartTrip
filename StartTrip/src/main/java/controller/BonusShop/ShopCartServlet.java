package controller.BonusShop;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.CustomerBean;
import model.dao.CustomerDao;
//讀取的路徑(控管)
@WebServlet("/ShopCartServlet")
public class ShopCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		//連接另一個頁面的setAttribute的變數LohinOK
		CustomerBean mb = (CustomerBean) session.getAttribute("LoginOK");
		//如果沒有登入，返回當前頁面(target)
		//判斷是否有login
		if(mb == null) {
			String target = (String) session.getAttribute("target");
			RequestDispatcher rd = req.getRequestDispatcher("/page/bonusshop/BonusShop.jsp");
			rd.forward(req, resp);
			return;
		}
		//讀取會員的bonus
		CustomerDao cd = new CustomerDao();
		
		System.out.println();
		
		//讀取總total
		Integer total = Integer.parseInt(req.getParameter("allbonus"));
		System.out.println(total);		

		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}

}
