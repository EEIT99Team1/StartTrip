package controller.house;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.HouseBean;
import model.service.HouseService;


@WebServlet("/page/House/SelectHouse_update")
public class SelectHouse_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
      HouseService houseService = new HouseService();
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String account=request.getParameter("account");
		HouseBean bean = new HouseBean();
		bean.setAccount(account);
		bean.setName(name);
		System.out.println(bean.toString());
		HouseBean house = houseService.select_house(bean);
		if(house!=null) {
			request.setAttribute("bean", house);			
			}
		
		request.getRequestDispatcher(
				"/page/House/BackstageUpdateHouse.jsp").forward(request, response);
	
		
		
		
	}

}
