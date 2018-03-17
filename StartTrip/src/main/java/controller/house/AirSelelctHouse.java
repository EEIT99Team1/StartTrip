package controller.house;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.HouseBean;
import model.service.AirService;
import model.service.HouseService;


@WebServlet("/page/House/AirSelelctHouse")
public class AirSelelctHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       AirService airService = new AirService();
   	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
    DateCompare compare = new DateCompare();  
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String country=request.getParameter("country");
		String area=request.getParameter("area");
		String go = request.getParameter("gotime");
		String out1 = request.getParameter("day");
		request.setAttribute("hcountry", country);
		request.setAttribute("hplace", area);
		request.setAttribute("hname", request.getParameter("people"));
		request.setAttribute("hphone", request.getParameter("telephone"));
		request.setAttribute("hdate", go);
		
		try {
			java.util.Date gotime = simpleDateFormat.parse(go);
			int day = Integer.parseInt(out1);
			java.util.Date outtime = 
					new java.util.Date(gotime.getYear(), gotime.getMonth(), gotime.getDate()+day);
			int goint = compare.getint(gotime);
			int outint = compare.getint(outtime);
			List<HouseBean> house=airService.house(country, area, goint, outint);
			for(HouseBean a:house) {
				System.out.println(a.getName());
			}
			
			request.setAttribute("select", house);
			request.setAttribute("day",day);
			request.setAttribute("gotime", go);
			request.setAttribute("goint", goint);
			request.setAttribute("outint", outint);
			
			
		} catch (ParseException  e) {
			e.printStackTrace();
			System.out.println("InsertTimes 38行錯誤");
			request.setAttribute("err", "日期有錯");
		} 
		catch (NumberFormatException  e) {
			e.printStackTrace();
			System.out.println("InsertTimes 52行錯誤");
			request.setAttribute("err", "天數有錯");
		} 
		
		
		
		
		
		
		

	
	
		request.getRequestDispatcher(
				"/page/House/AirHouse.jsp").forward(request, response);	
		return;
	
	}

}
