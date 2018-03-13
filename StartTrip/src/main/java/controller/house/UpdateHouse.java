package controller.house;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.IOP.ServiceContext;

import model.bean.HouseBean;
import model.service.HouseService;

/**
 * Servlet implementation class UpdateHouse
 */
@WebServlet("/page/House/UpdateHouse")
public class UpdateHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HouseService houseService = new HouseService(); 
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String account=request.getParameter("account");
		String pass=request.getParameter("pass");
		String country=request.getParameter("country");
		String area=request.getParameter("area");
		String addres=request.getParameter("addres");
		String telephone1=request.getParameter("telephone");
		String explain=request.getParameter("explain");	
		String picture=request.getParameter("picture");	
		System.out.println(request.getParameter("p"));
		HouseBean bean =  new HouseBean();
		bean.setAccount(account);
		bean.setAddres(addres);
		bean.setArea(area);
		bean.setCountry(country);
		bean.setExplain(explain);
		bean.setName(name);
		bean.setPass(pass);
		bean.setPicture(picture);
		
		HouseBean bb=null;
		try {
			int telephone = Integer.parseInt(telephone1);
			bean.setTelephone(telephone);
			bb= houseService.update_House(bean);
		} catch (Exception e) {		
		}
		 
		if(bb==null) {
			request.setAttribute("fail", "修改失敗");
			request.setAttribute("bean", bean);
			request.getRequestDispatcher(
					"/page/House/BackstageUpdateHouse.jsp").forward(request, response);
			return;
			}
			
		request.setAttribute("bean", bb);
		request.setAttribute("success", "修改成功");
		request.getRequestDispatcher(
				"/page/House/BackstageUpdateHouse.jsp").forward(request, response);
		
		
	}

}
