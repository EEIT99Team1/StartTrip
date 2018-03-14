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


@WebServlet("/page/House/UpdateDeleteRoom")
public class UpdateDeleteRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RoomService roomService = new RoomService();
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);		
	}

	
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
		String account = request.getParameter("account");
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
			System.out.println("NNNNN");
			request.getRequestDispatcher(
					"/page/House/BackstageUpdate_DeleteRoom.jsp").forward(request, response);
			return;
		}		
		
		bean.setName(name);
		bean.setRoomName(roomname);
		bean.setExplain1(explain1);
		bean.setExplain2(explain2);
		bean.setExplain3(explain3);
		 System.out.println(bean.toString());
		int c=0;
		if("修改".equals(account)) {
			 c= roomService.update_room(bean);
			 			 
				if(c==547) {
					request.setAttribute("update", "你未登入或是其他問題");
				}
				else if(c==2627) {
					request.setAttribute("update", "房間名重複了歐");
				}
				else if(c==1) {
					System.out.println("xxxx:"+c);
					request.setAttribute("update", "修改成功");
				}
				else {
					request.setAttribute("update", "系統有問題,請找管理員");
				}
				
				request.getRequestDispatcher(
						"/page/House/BackstageUpdate_DeleteRoom.jsp").forward(request, response);
				return;
			 			 
			}
		
	
		if("刪除".equals(account)) {
			c=roomService.delete_room(bean);
			if(c==1) {
				request.setAttribute("update", "刪除成功");
			}
			else {
				request.setAttribute("update", "刪除失敗");
			}
			request.getRequestDispatcher(
					"/page/House/BackstageUpdate_DeleteRoom.jsp").forward(request, response);
			return;
			
			
		}


		
	}

}
