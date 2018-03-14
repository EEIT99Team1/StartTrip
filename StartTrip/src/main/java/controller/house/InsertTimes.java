package controller.house;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.TimesBean;
import model.service.TimesService;


@WebServlet("/page/House/InsertTimes")
public class InsertTimes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
     DateCompare compare = new DateCompare();
     TimesService timesService = new TimesService();
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name=request.getParameter("name");
		String roomName=request.getParameter("roomName");
		String go = request.getParameter("gotime");
		String out = request.getParameter("outtime");
		String people=request.getParameter("people");
		String t=request.getParameter("telephone");
		String p=request.getParameter("price");
		Integer price = 0 ;
		try {
			java.util.Date gotime = simpleDateFormat.parse(go);
			int out1 = Integer.parseInt(out);
			java.util.Date outtime = new java.util.Date(gotime.getYear(),gotime.getMonth(),gotime.getDate()+out1);
			int goint = compare.getint(gotime);
			int outint = compare.getint(outtime);
			int telephone = Integer.parseInt(t);
			 price = Integer.parseInt(p);
			TimesBean bean = new TimesBean();
			bean.setGoInt(goint);
			bean.setGoTime(gotime);
			bean.setName(name);
			bean.setOutInt(outint);
			bean.setOutTime(outtime);
			bean.setPeople(people);
			bean.setTelephone(telephone);
			bean.setPrice(price);
			bean.setRoomName(roomName);
			//System.out.println(bean.toString());
			int c = timesService.insert(bean);
			if(c==0) {
				request.setAttribute("price", p);
			   request.setAttribute("select", "沒找到房間或是旅館");
			}
			else if(c==-1){
			   request.setAttribute("select", "Sor 剛剛被訂走了");
			}
			else if(c==1) {
				request.setAttribute("insert", "訂房完成");
			}
			else{
				request.setAttribute("select", "有錯誤,請找管理員回報錯誤訊息");
			}
			request.setAttribute("price", p);
			request.getRequestDispatcher(
					"/page/House/TimesInsert.jsp").forward(request, response);	
			return;
						
		} catch (ParseException e) {
			e.printStackTrace();
			request.setAttribute("select", "日期有錯誤");
		}
		catch (NumberFormatException e) {
			e.printStackTrace();
			request.setAttribute("select", "請輸入整數");
			
		}
		request.setAttribute("price", p);
		request.getRequestDispatcher(
				"/page/House/TimesInsert.jsp").forward(request, response);	
		
	}

}
