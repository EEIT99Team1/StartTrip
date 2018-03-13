package controller.house;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.HouseBean;
import model.service.HouseService;


@WebServlet("/page/House/InsertHouse")
public class InsertHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HouseService houseService = new HouseService(); 
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		getServletContext().getRealPath("/");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Map<String, String> err = new HashMap<>();
		request.setAttribute("err", err);
		String name=request.getParameter("name");
		String account=request.getParameter("account");
		String pass=request.getParameter("pass");
		String country=request.getParameter("country");
		String area=request.getParameter("area");
		String addres=request.getParameter("addres");
		String t=request.getParameter("telephone");
		String explain=request.getParameter("explain");	
		HouseBean bean =  new HouseBean();
		bean.setAccount(account);
		bean.setAddres(addres);
		bean.setArea(area);
		bean.setCountry(country);
		bean.setExplain(explain);
		bean.setName(name);
		bean.setPass(pass);
		try {
			int telephone = Integer.parseInt(t);
			bean.setTelephone(telephone);
		} catch (Exception e) {
			err.put("telephone", "請輸入整數(必填)");
		}
		
		if(!err.isEmpty()) {
			request.getRequestDispatcher(
					"/page/House/TryInsertHouse.jsp").forward(request, response);
			return;
		}
		System.out.println(bean.toString());
		int c=houseService.insert_house(bean);
		if(c==-1)
			request.setAttribute("insert","帳號已被取");
		else if(c==-2)
			request.setAttribute("insert","有相同的民宿名子");
		else if(c==1)
			request.setAttribute("insert","輸入成功");
		else
			request.setAttribute("insert","有問題請聯絡程式人員");
		
		request.getRequestDispatcher(
				"/page/House/TryInsertHouse.jsp").forward(request, response);
	}

}
