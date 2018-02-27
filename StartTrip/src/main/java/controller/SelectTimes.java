package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.service.TimesService;


@WebServlet("/page/House/SelectTimes")
public class SelectTimes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TimesService timesService = new TimesService();
   
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String roomName=request.getParameter("roomName");
		String go = request.getParameter("gotime");
		String out = request.getParameter("outtime");
		int goint = Integer.parseInt(go);
		int outint = Integer.parseInt(out);
		int c=timesService.select(name, roomName, goint, outint);
		request.setAttribute("select", c);
		System.out.println(c);
		request.getRequestDispatcher(
				"/page/House/Times.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
