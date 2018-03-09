package controller.house;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TimesBean;
import model.service.TimesService;


@WebServlet("/page/House/GoToTimes")
public class GoToTimes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TimesService timesService = new TimesService();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String roomName=request.getParameter("roomName");
		String price=request.getParameter("price");
		String picture=request.getParameter("picture");
		request.setAttribute("name", name);
		request.setAttribute("roomName", roomName);
		request.setAttribute("price", price);
		request.setAttribute("picture", picture);
		List<TimesBean> c = timesService.select(name, roomName);
		request.getSession().setAttribute("time", c);
		
		System.out.println(c.size());
		request.getRequestDispatcher(
				"/page/House/Times.jsp").forward(request, response);

		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
