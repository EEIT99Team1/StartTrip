package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
    DateCompare compare = new DateCompare();  
   
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String roomName=request.getParameter("roomName");
		String go = request.getParameter("gotime");
		String out1 = request.getParameter("outtime");
		String price1 = request.getParameter("price");
		request.setAttribute("picture", request.getParameter("picture"));
		request.setAttribute("name",name);
		int price = Integer.parseInt(price1);
		try {
			java.util.Date gotime = simpleDateFormat.parse(go);
			int out = Integer.parseInt(out1);
			java.util.Date outtime = 
					new java.util.Date(gotime.getYear(), gotime.getMonth(), gotime.getDate()+out);
			int goint = compare.getint(gotime);
			int outint = compare.getint(outtime);
			int c=timesService.select(name, roomName, goint, outint);
			System.out.println(c);
			if(c==0) {
				request.setAttribute("price", price*out);
				request.getRequestDispatcher(
						"/page/House/TimesInsert.jsp").forward(request, response);
				return;
			}

			else {
				request.setAttribute("select", "你輸入的時間內已經被訂了");
				request.getRequestDispatcher(
						"/page/House/Times.jsp").forward(request, response);
				return;
			}
		} catch (ParseException  e) {
			e.printStackTrace();
			System.out.println("InsertTimes 38行錯誤");
			request.setAttribute("select", "日期有錯");
		} 
		catch (NumberFormatException  e) {
			e.printStackTrace();
			System.out.println("InsertTimes 52行錯誤");
			request.setAttribute("select", "天數有錯");
		} 
		

		request.getRequestDispatcher(
				"/page/House/Times.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
