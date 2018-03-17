package controller.house;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.RoomBean;
import model.service.AirService;


@WebServlet("/page/House/AirSelectRoom")
public class AirSelectRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AirService airService = new AirService();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		//String day=request.getParameter("day");
		String gotime=request.getParameter("gotime");
		//String goint=request.getParameter("goint");
		//String outint=request.getParameter("outint");
		
		int day = Integer.parseInt(request.getParameter("day"));
		int goint=Integer.parseInt(request.getParameter("goint"));
		int outint= Integer.parseInt(request.getParameter("outint"));
		request.setAttribute("day", day);
		request.setAttribute("gotime", gotime);
		request.setAttribute("people", request.getParameter("people"));
		request.setAttribute("telephone", request.getParameter("telephone"));
		
		List<RoomBean> room = airService.room(name, goint, outint);
		request.setAttribute("select", room);
		request.getRequestDispatcher(
				"/page/House/Room.jsp").forward(request, response);
		
		
	}

}
