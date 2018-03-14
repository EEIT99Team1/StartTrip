package controller.house;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.RoomBean;
import model.service.RoomService;


@WebServlet("/page/House/InsertRoom")
public class InsertRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RoomService roomService = new RoomService();
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);}	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Map<String, String> err = new HashMap<>();
		request.setAttribute("err", err);
		
		String name = request.getParameter("name");
		String roomname = request.getParameter("roomname");
		String p = request.getParameter("price");
		String n = request.getParameter("number");
		String explain1 = request.getParameter("explain1");
		String explain2 = request.getParameter("explain2");
		String explain3 = request.getParameter("explain3");
		RoomBean bean= new RoomBean();
		try {
			int price = Integer.parseInt(p);
			bean.setPrice(price);
		} catch (Exception e) {
			err.put("price", "請輸入整數的價錢(必填)");
		}
		
		try {
			int number = Integer.parseInt(n);
			bean.setNumber(number);
		} catch (Exception e) {
			err.put("number", "請輸入入住人數(必填)");
		}
		
		if(name==null || name.trim().length()==0) {
			err.put("name", "你還未登入");
		}
		
		if(roomname==null || roomname.trim().length()==0) {
			err.put("roomname", "房間名必填");
		}
		
		if(!err.isEmpty()) {
			request.getRequestDispatcher(
					"/page/House/BackstageInsertRoom.jsp").forward(request, response);
			return;
		}		
		
		bean.setName(name);
		bean.setRoomName(roomname);
		bean.setExplain1(explain1);
		bean.setExplain2(explain2);
		bean.setExplain3(explain3);
		
		
		int c=  roomService.insert_room(bean);
		if(c==547) {
			request.setAttribute("select", "你未登入或是其他問題");
		}
		else if(c==2627) {
			request.setAttribute("select", "房間名重複了歐");
		}
		else if(c==1) {
			request.setAttribute("select", "輸入成功");
		}
		else {
			request.setAttribute("select", "系統有問題,請找管理員");
		}
		request.getRequestDispatcher(
				"/page/House/BackstageInsertRoom.jsp").forward(request, response);
		
		
		
	}

}
