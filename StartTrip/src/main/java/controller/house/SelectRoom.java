package controller.house;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.HouseBean;
import model.bean.RoomBean;
import model.service.RoomService;


@WebServlet("/page/House/SelectRoom")
public class SelectRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RoomService roomService = new RoomService();
   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String account = request.getParameter("account");
		List<RoomBean> c = roomService.select(name);
		request.setAttribute("select", c);
		
		if(account!=null) {
			request.getRequestDispatcher(
					"/page/House/BackstageUpdate_DeleteRoom.jsp").forward(request, response);
			return;
		}
		
		request.getRequestDispatcher(
				"/page/House/Room.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
