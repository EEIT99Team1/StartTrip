package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.HouseService;
import model.bean.HouseBean;


@WebServlet("/SelectHouse")
public class SelectHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HouseService houseService = new HouseService();
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String Area=request.getParameter("Area");
		String Country=request.getParameter("Country");
		List<HouseBean> c = houseService.select(Country,Area);
		request.setAttribute("select", c);
		System.out.println(c.size());
		
		request.getRequestDispatcher(
				"/NewFile.jsp").forward(request, response);
	
	}

}
