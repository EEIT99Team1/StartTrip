package controller.house;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.HouseBean;
import model.service.HouseService;


@WebServlet("/page/House/LoginHouse")
public class LoginHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HouseService houseService = new HouseService();  

  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String ss = (String) session.getAttribute("HouseTarget");
		String Account=request.getParameter("account");
		String Pass=request.getParameter("pass");
		HouseBean bean=houseService.select_account(Account, Pass);
		//request.setAttribute("select", bean);
		//System.out.println(bean.toString());	
		if(bean==null) {
			request.setAttribute("select", "loss");
			request.getRequestDispatcher(
					"/page/House/BackstageHouse.jsp").forward(request, response);
			return;
		}
		else {
			if(ss!=null) {
				session.removeAttribute("HouseLogin");
				session.removeAttribute("HouseTarget");
			}
			
			request.setAttribute("select", "YES");
			request.setAttribute("bean", bean);
			session.setAttribute("HouseLogin", bean);
				
		}
		request.getRequestDispatcher(
				"/page/House/BackstageUpdateHouse.jsp").forward(request, response);
		
		
		
	}

}
